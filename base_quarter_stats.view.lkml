view: base_quarter_stats {
  dimension_group: _data {
    type: time
    timeframes: ["quarter", "raw"]
    convert_tz: no
    sql: CAST(CONCAT(${TABLE}._data_quarter, '-01') AS TIMESTAMP) ;;
  }
  dimension: clicks {
    type: number
  }
  dimension: conversions {
    type: number
  }
  dimension: cost {
    type: number
  }
  dimension: impressions {
    type: number
  }
  dimension: interactions {
    type: number
  }
  dimension: _data_last_quarter {
    type: date_quarter
    sql: DATE_ADD(CAST(CONCAT(${_data_quarter}, '-01') AS DATE), INTERVAL -1 QUARTER) ;;
  }
  measure: total_impressions {
    drill_fields: [total_impressions]
  }
  measure: total_clicks {
    drill_fields: [total_clicks]
  }
  measure: total_interactions {
    drill_fields: [total_interactions]
  }
  measure: total_conversions {
    drill_fields: [total_conversions]
  }
  measure: total_cost_usd {
    drill_fields: [total_cost_usd]
  }
  measure: average_interaction_rate {
    drill_fields: [average_interaction_rate]
  }
  measure: average_click_rate {
    drill_fields: [average_click_rate]
  }
  measure: average_conversion_rate {
    drill_fields: [average_conversion_rate]
  }
  measure: average_cost_per_click {
    drill_fields: [average_cost_per_click]
  }
  measure: average_cost_per_conversion {
    drill_fields: [average_cost_per_conversion]
  }
}
