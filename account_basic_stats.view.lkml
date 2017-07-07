include: "stats.view.lkml"

view: account_basic_stats {
  extends: [base, stats]

  sql_table_name: adwords_v201609.AccountBasicStats_6747157124 ;;

  dimension: _data {
    sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
  }

  dimension: _latest {
    sql: TIMESTAMP(${TABLE}._LATEST_DATE) ;;
  }

  dimension: active_view_impressions {
    type: number
    sql: ${TABLE}.ActiveViewImpressions ;;
  }

  dimension: active_view_measurability {
    type: number
    sql: ${TABLE}.ActiveViewMeasurability ;;
  }

  dimension: active_view_measurable_cost {
    type: number
    sql: ${TABLE}.ActiveViewMeasurableCost ;;
  }

  dimension: active_view_measurable_impressions {
    type: number
    sql: ${TABLE}.ActiveViewMeasurableImpressions ;;
  }

  dimension: active_view_viewability {
    type: number
    sql: ${TABLE}.ActiveViewViewability ;;
  }

  dimension: ad_network_type1 {
    type: string
    sql: ${TABLE}.AdNetworkType1 ;;
  }

  dimension: ad_network_type2 {
    type: string
    sql: ${TABLE}.AdNetworkType2 ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.AveragePosition ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.ConversionValue ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  dimension: interaction_types {
    type: string
    sql: ${TABLE}.InteractionTypes ;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.Interactions ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.Slot ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.ViewThroughConversions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_impressions {
    drill_fields: [customer.detail*, total_impressions]
  }
  measure: total_clicks {
    drill_fields: [customer.detail*, total_clicks]
  }
  measure: total_interactions {
    drill_fields: [customer.detail*, total_interactions]
  }
  measure: total_conversions {
    drill_fields: [customer.detail*, total_conversions]
  }
  measure: total_cost_usd {
    drill_fields: [customer.detail*, total_cost_usd]
  }
  measure: average_interaction_rate {
    drill_fields: [customer.detail*, average_interaction_rate]
  }
  measure: average_click_rate {
    drill_fields: [customer.detail*, average_click_rate]
  }
  measure: average_conversion_rate {
    drill_fields: [customer.detail*, average_conversion_rate]
  }
  measure: average_cost_per_click {
    drill_fields: [customer.detail*, average_cost_per_click]
  }
  measure: average_cost_per_conversion {
    drill_fields: [customer.detail*, average_cost_per_conversion]
  }
}
