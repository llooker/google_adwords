view: stats {
  extension: required

  dimension: ad_network_type1 {
    hidden: yes
  }

  dimension: ad_network_type2 {
    hidden: yes
  }

  dimension: ad_network_type {
    type: string
    sql: CASE
      WHEN ${ad_network_type1} = 'SHASTA_AD_NETWORK_TYPE_1_SEARCH' AND ${ad_network_type2} = 'SHASTA_AD_NETWORK_TYPE_2_SEARCH'
        THEN 'Search'
      WHEN ${ad_network_type1} = 'SHASTA_AD_NETWORK_TYPE_1_SEARCH' AND ${ad_network_type2} = 'SHASTA_AD_NETWORK_TYPE_2_SEARCH_PARTNERS'
        THEN 'Search Partners'
      WHEN ${ad_network_type1} = 'SHASTA_AD_NETWORK_TYPE_1_CONTENT'
        THEN 'Content'
      ELSE 'Other'
      END
      ;;
  }

  dimension: cost_usd {
    type: number
    sql: (${cost} / 1000000) ;;
  }

  dimension: cost_per_click {
    type: number
    sql: ${cost}/(NULLIF(${clicks},0)) ;;
  }

  measure: total_cost {
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
    type: number
    sql: ${total_interactions}*1.0/nullif(${total_impressions},0) ;;
    value_format_name: percent_2
  }

  measure: average_cost_per_conversion {
    type: number
    sql: ${total_cost}*1.0 / NULLIF(${total_conversions},0) ;;
    value_format_name: usd
  }

  measure: average_cost_per_click {
    type: number
    sql: ${total_cost}*1.0 / NULLIF(${total_clicks},0) ;;
    value_format_name: usd
  }

  measure: average_conversion_rate {
    type: number
    sql: ${total_conversions}*1.0 / NULLIF(${total_clicks},0) ;;
    value_format_name: percent_2
  }
}
