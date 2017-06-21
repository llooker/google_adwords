include: "base.view.lkml"

view: stats {
  extends: [base]
  extension: required

  dimension: _data_day_of_quarter {
    group_label: "Data Date"
    label: "Day of Quarter"
    type: number
    sql: DATE_DIFF(
           ${_data_date},
          CAST(CONCAT(${_data_quarter}, '-01') as DATE),
          day) + 1
       ;;
  }

  dimension: _data_next_quarter {
    type: date
    sql: DATE_ADD(CAST(CONCAT(${_data_quarter}, '-01') as DATE), INTERVAL 1 QUARTER) ;;
  }

  dimension:  _data_days_in_quarter {
    type: number
    sql: DATE_DIFF(
           ${_data_next_quarter},
           CAST(CONCAT(${_data_quarter}, '-01') as DATE),
           day) ;;
  }

  measure: _data_max_day_of_week_index {
    type: max
    sql: ${_data_day_of_week_index} ;;
  }

  measure: _data_max_day_of_month {
    type: max
    sql: ${_data_day_of_month} ;;
  }

  measure: _data_max_day_of_quarter {
    type: max
    sql: ${_data_day_of_quarter} ;;
  }

  measure: _data_max_day_of_year {
    type: max
    sql: ${_data_day_of_year} ;;
  }

  dimension: cost_usd {
    type: number
    sql: (${cost} / 1000000) ;;
  }

  dimension: cost_usd_per_click {
    type: number
    sql: ${cost_usd}/(NULLIF(${clicks},0)) ;;
  }

  measure: total_cost_usd {
    type: sum
    sql: ${cost_usd} ;;
    value_format_name: usd_0
  }

  measure: total_conversions {
    type: sum
    sql: ${conversions} ;;
    value_format_name: decimal_0
  }

  measure: total_impressions {
    type:  sum
    sql:  ${impressions} ;;
    drill_fields: [external_customer_id, total_impressions]
  }

  measure: total_interactions {
    type:  sum
    sql:  ${interactions} ;;
    drill_fields: [external_customer_id, total_impressions]
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
    value_format_name: decimal_0
  }

## Due the manner in which Looker compiles SQL queries, finding weighted averages in this instance is better accomplished through an aggregated measure
## rather than creating a new dimension to be aggregated over

  measure: average_interaction_rate {
    label: "Interation Rate"
    type: number
    sql: ${total_interactions}*1.0/nullif(${total_impressions},0) ;;
    value_format_name: percent_2
  }

  measure: average_click_rate {
    label: "Click Through Rate"
    type: number
    sql: ${total_clicks}*1.0/nullif(${total_impressions},0) ;;
    value_format_name: percent_2
  }

  measure: average_cost_per_conversion {
    label: "Cost per Conversion"
    type: number
    sql: ${total_cost_usd}*1.0 / NULLIF(${total_conversions},0) ;;
    value_format_name: usd
  }

  measure: average_cost_per_click {
    label: "Cost per Click"
    type: number
    sql: ${total_cost_usd}*1.0 / NULLIF(${total_clicks},0) ;;
    value_format_name: usd
  }

  measure: average_cost_per_interaction {
    label: "Cost per Interaction"
    type: number
    sql: ${total_cost_usd}*1.0 / NULLIF(${total_interactions},0) ;;
    value_format_name: usd
  }

  measure: average_cost_per_impression {
    label: "Cost per Impression"
    type: number
    sql: ${total_cost_usd}*1.0 / NULLIF(${total_impressions},0) ;;
    value_format_name: usd
  }

  measure: average_conversion_rate {
    label: "Conversion Rate"
    type: number
    sql: ${total_conversions}*1.0 / NULLIF(${total_clicks},0) ;;
    value_format_name: percent_2
  }
}
