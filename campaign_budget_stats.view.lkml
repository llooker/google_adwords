view: campaign_budget_stats {
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
      year
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
