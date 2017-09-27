include: "stats.view.lkml"

# Derived table for rolling up stats into an aggregation by quarter
view: campaign_quarter_stats {
  extends: [stats]

  derived_table: {
    sql:
      SELECT
        FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(CAST(TIMESTAMP(stats._DATA_DATE)  AS TIMESTAMP), QUARTER)) AS quarter
        , stats.CampaignId  AS campaign_id
        , COALESCE(SUM((stats.Cost) ), 0) AS cost
        , COALESCE(SUM(stats.Clicks ), 0) AS clicks
        , COALESCE(SUM(stats.Conversions ), 0) AS conversions
        , COALESCE(SUM(stats.Impressions ), 0) AS impressions
        , COALESCE(SUM(stats.Interactions ), 0) AS interactions
      FROM adwords_v201609.CampaignBasicStats_6747157124 AS stats
      WHERE
      -- quarter <= max_day_of_quarter of max quarter
        (DATE_DIFF(
          (CAST(TIMESTAMP(stats._DATA_DATE)  AS DATE)),
          CAST(CONCAT((FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(CAST(TIMESTAMP(stats._DATA_DATE)  AS TIMESTAMP), QUARTER))), '-01') as DATE),
          day) + 1) <= (
            SELECT
              MAX((DATE_DIFF(
                       (CAST(TIMESTAMP(campaign_stats._DATA_DATE)  AS DATE)),
                      CAST(CONCAT((FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(CAST(TIMESTAMP(campaign_stats._DATA_DATE)  AS TIMESTAMP), QUARTER))), '-01') as DATE),
                      day) + 1) ) max_day_of_quarter
            FROM adwords_v201609.CampaignBasicStats_6747157124  AS campaign_stats
            -- max quarter
            WHERE FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(CAST(TIMESTAMP(campaign_stats._DATA_DATE)  AS TIMESTAMP), QUARTER))  = (
              SELECT MAX(FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(CAST(TIMESTAMP(campaign_stats._DATA_DATE)  AS TIMESTAMP), QUARTER))) AS quarter
              FROM adwords_v201609.CampaignBasicStats_6747157124  AS campaign_stats))

      GROUP BY 1,2
        ;;

#       explore_source: stats {
#         column: quarter { field: stats._data_date_quarter }
#         column: campaign_id { field: stats.campaign_id }
#         column: cost { field: stats.total_cost }
#         column: clicks { field: stats.total_clicks }
#         column: conversions { field: stats.total_conversions }
#         column: impressions { field: stats.total_impressions }
#         column: interactions { field: stats.interactions }
#       }
    }
  dimension: _data_quarter {
    type: date_quarter
    convert_tz: no
    sql: CONCAT(${TABLE}.quarter, '-01') ;;
  }
  dimension: campaign_id {
    drill_fields: [ad_group.name]
  }
  dimension: cost {}
  dimension: clicks {}
  dimension: conversions {}
  dimension: impressions {}
  dimension: interactions {}

  dimension: _data_last_quarter {
    type: date_quarter
    sql: DATE_ADD(CAST(CONCAT(${_data_quarter}, '-01') AS DATE), INTERVAL -1 QUARTER) ;;
  }

  measure: total_impressions {
    drill_fields: [campaign.detail*, total_impressions]
  }
  measure: total_clicks {
    drill_fields: [campaign.detail*, total_clicks]
  }
  measure: total_interactions {
    drill_fields: [campaign.detail*, total_interactions]
  }
  measure: total_conversions {
    drill_fields: [campaign.detail*, total_conversions]
  }
  measure: total_cost_usd {
    drill_fields: [campaign.detail*, total_cost_usd]
  }
  measure: average_interaction_rate {
    drill_fields: [campaign.detail*, average_interaction_rate]
  }
  measure: average_click_rate {
    drill_fields: [campaign.detail*, average_click_rate]
  }
  measure: average_conversion_rate {
    drill_fields: [campaign.detail*, average_conversion_rate]
  }
  measure: average_cost_per_click {
    drill_fields: [campaign.detail*, average_cost_per_click]
  }
  measure: average_cost_per_conversion {
    drill_fields: [campaign.detail*, average_cost_per_conversion]
  }
}
