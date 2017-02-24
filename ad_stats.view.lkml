view: ad_stats {
  sql_table_name: adwords_v201609.AdStats_6747157124 ;;

  dimension_group: _data {
    description: "Use this field to filter on a specific time period for ad performance"
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
    sql: (TIMESTAMP(${TABLE}._DATA_DATE)) ;;
  }

  dimension_group: _latest {
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
    sql: (TIMESTAMP(${TABLE}._LATEST_DATE)) ;;
  }

  dimension: active_view_cpm {
    type: number
    sql: ${TABLE}.ActiveViewCpm * rand() * 10 ;;
  }

  dimension: active_view_ctr {
    type: number
    sql: ${TABLE}.ActiveViewCtr * rand() * 10 ;;
  }

  dimension: active_view_impressions {
    type: number
    sql: ${TABLE}.ActiveViewImpressions* rand() * 10 ;;
  }

  dimension: active_view_measurability {
    type: number
    sql: ${TABLE}.ActiveViewMeasurability * rand() * 10 ;;
  }

  dimension: active_view_measurable_cost {
    type: number
    sql: ${TABLE}.ActiveViewMeasurableCost * rand() * 10 ;;
  }

  dimension: active_view_measurable_impressions {
    type: number
    sql: ${TABLE}.ActiveViewMeasurableImpressions * rand() * 10 ;;
  }

  dimension: active_view_viewability {
    type: number
    sql: ${TABLE}.ActiveViewViewability * rand() * 10 ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: ad_network_type1 {
    type: string
    sql: ${TABLE}.AdNetworkType1 ;;
  }

  dimension: ad_network_type2 {
    type: string
    sql: ${TABLE}.AdNetworkType2 ;;
  }

  dimension: average_cost {
    type: number
    sql: ${TABLE}.AverageCost * rand() * 10 ;;
  }

  dimension: average_cpc {
    type: number
    sql: ${TABLE}.AverageCpc * rand() * 10 ;;
  }

  dimension: cost_per_click {
    type: number
    sql: ${cost}/(NULLIF(${clicks},0)) ;;
  }

  dimension: average_cpm {
    type: number
    sql: ${TABLE}.AverageCpm * rand() * 10 ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.AveragePosition * rand() ;;
  }

  dimension: base_ad_group_id {
    type: number
    sql: ${TABLE}.BaseAdGroupId ;;
  }

  dimension: base_campaign_id {
    type: number
    sql: ${TABLE}.BaseCampaignId ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: click_type {
    type: string
    sql: ${TABLE}.ClickType ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks * rand() * 10 ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.ConversionRate  * rand() * 10;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.ConversionValue * rand() * 10 ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions  * rand() * 10;;
  }

  dimension: cost {
    type: number
    sql: (${TABLE}.Cost/1000000) * rand() * 10 ;;
  }

  dimension: cost_per_conversion {
    type: number
    sql: ${TABLE}.CostPerConversion * rand() * 10 ;;
  }

  dimension: creative_id {
    type: number
    sql: ${TABLE}.CreativeId ;;
  }

  dimension: criterion_id {
    type: number
    sql: ${TABLE}.CriterionId ;;
  }

  dimension: criterion_type {
    type: string
    sql: ${TABLE}.CriterionType ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.Ctr ;;
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

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DayOfWeek ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: gmail_forwards {
    type: number
    sql: ${TABLE}.GmailForwards * rand() * 10 ;;
  }

  dimension: gmail_saves {
    type: number
    sql: ${TABLE}.GmailSaves * rand() * 10 ;;
  }

  dimension: gmail_secondary_clicks {
    type: number
    sql: ${TABLE}.GmailSecondaryClicks * rand() * 10 ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions * rand() * 10 ;;
  }

  dimension: interaction_rate {
    type: number
    sql: ${TABLE}.InteractionRate * rand() * 10;;
  }

  dimension: interaction_types {
    type: string
    sql: ${TABLE}.InteractionTypes;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.Interactions * rand() * 10;;
  }

  dimension: is_negative {
    type: yesno
    sql: ${TABLE}.IsNegative ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.Month ;;
  }

  dimension: month_of_year {
    type: string
    sql: ${TABLE}.MonthOfYear ;;
  }

  dimension_group: quarter {
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
    sql: ${TABLE}.Quarter ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.Slot ;;
  }

  dimension: value_per_conversion {
    type: number
    sql: ${TABLE}.ValuePerConversion  * rand() * 10 ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.ViewThroughConversions  * rand() * 10;;
  }

  dimension_group: week {
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
    sql: ${TABLE}.Week ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_impressions {
    type:  sum
    sql:  ${impressions} ;;
    drill_fields: [campaign_id, total_impressions]
  }

  measure: total_conversions {
    type:  sum
    sql:  ${conversions} ;;
    drill_fields: [campaign_id, total_impressions]
  }

  measure: total_interactions {
    type:  sum
    sql:  ${interactions} ;;
    drill_fields: [campaign_id, total_impressions]
  }

  measure: total_gmail_forwards {
    type: sum
    sql: ${gmail_forwards} ;;
  }

  measure: total_gmail_saves {
    type: sum
    sql: ${gmail_saves} ;;
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
  }

  measure: total_gmail_secondary_clicks {
    type: sum
    sql: ${gmail_secondary_clicks} ;;
  }

## Due the manner in which Looker compiles SQL queries, finding weighted averages in this instance is better accomplished through an aggregated measure
## rather than creating a new dimension to be aggregated over

  measure: average_interaction_rate{
    type: number
    sql: ${total_interactions}*1.0/nullif(${total_impressions},0) ;;
    value_format_name: percent_2
  }

  measure: total_value_per_conversion {
    type: sum
    sql: ${value_per_conversion} ;;
    value_format_name: usd
  }

  measure: average_value_per_conversion {
    type: average
    sql: ${value_per_conversion} ;;
    value_format_name: usd
  }

  measure: average_conversion_rate {
    type: number
    sql: ${total_conversions}*1.0 / NULLIF(${total_clicks},0) ;;
    value_format_name: percent_2
  }
  measure: total_cost {
    type:  sum
    sql:  ${cost} ;;
    value_format_name: usd_0
  }

  measure: total_cost_per_click {
    type:  sum
    sql: ${cost_per_click} ;;
    value_format_name: usd
  }

  measure: average_cost_per_click {
    type:  average
    sql: ${cost_per_click} ;;
    value_format_name: usd
  }

  measure: average_cost_per_conversion {
    type:  number
    sql: ${total_cost}/(NULLIF(${total_conversions},0)) ;;
    value_format_name: usd
  }

}
