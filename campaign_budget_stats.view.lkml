view: campaign_budget_stats {

#   derived_table: {
#     explore_source: campaign_basic_stats {
#       column: _data_date {}
#       column: budget_id { field: campaign.budget_id }
#       column: campaign_id { field: campaign.campaign_id }
#       column: amount_usd { field: campaign.total_amount_usd }
#       column: cost_usd {}
#     }
#   }
#   dimension: _data_date {}
#   dimension: budget_id {}
#   dimension: campaign_id {}
#   dimension: amount_usd {}
#   dimension: cost_usd {}
  derived_table: {
    sql: SELECT
  campaign.CampaignId  AS campaign_id,
  campaign.BudgetId  AS budget_id,
  campaign_stats._DATA_DATE AS _DATA_DATE,
  COALESCE(SUM((campaign.Amount) ), 0) AS amount,
  COALESCE(SUM((campaign_stats.Cost) ), 0) AS cost
FROM adwords_v201609.CampaignStats_6747157124  AS campaign_stats
LEFT JOIN adwords_v201609.Campaign_6747157124  AS campaign ON campaign_stats.CampaignId = campaign.CampaignId AND
      campaign_stats._DATA_DATE = campaign._DATA_DATE

GROUP BY 1,2,3
      ;;
  }

  dimension: campaign_id {}
  dimension: budget_id {}
  dimension_group: _data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year
    ]
    convert_tz: no
    sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
  }
  dimension: amount {}
  dimension: cost {}
  dimension: amount_usd {
    type: number
    sql: (${amount} / 1000000) ;;
  }
  dimension: cost_usd {
    type: number
    sql: (${cost} / 1000000) ;;
  }
  dimension: remaining_budget {
    type: number
    sql: ${amount_usd} - ${cost_usd} ;;
    value_format_name: usd_0
  }
  dimension: percent_remaining_budget {
    type: number
    sql: ${remaining_budget} / ${amount_usd} ;;
    value_format_name: percent_2
  }
  dimension: percent_used_budget {
    type: number
    sql: COALESCE(1 - ${percent_remaining_budget}, 0) ;;
    value_format_name: percent_2
  }
  dimension: percent_used_budget_tier {
    type: tier
    tiers: [0, 0.2, 0.4, 0.6, 0.8, 1]
    style: interval
    sql: ${percent_used_budget} ;;
    value_format_name: percent_2
  }
  dimension: constrained_budget {
    type: yesno
    description: "Daily spend within 20% of campaign budget"
    sql:  ${percent_remaining_budget} <= .2 ;;
  }
  measure: total_amount_usd {
    type: sum
    sql: ${amount_usd} ;;
    value_format_name: usd_0
  }
  measure: total_cost_usd {
    type: sum
    sql: ${cost_usd} ;;
    value_format_name: usd_0
  }
  measure: count_constrained_budget_days {
    type: count_distinct
    description: "Days with daily spend within 20% of campaign budget"
    sql:  CONCAT(CAST(${_data_raw} as STRING), CAST(${budget_id} as STRING))  ;;
    filters: {
      field: constrained_budget
      value: "yes"
    }
  }
}
