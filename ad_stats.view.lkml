view: ad_stats {
  sql_table_name: adwords_v201609.AdStats_6747157124 ;;
  ### Metrics can be aggregated over time from this table, so we do NOT restrict on _data_date = _latest_date

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
    sql: ${TABLE}.ActiveViewCpm ;;
  }

  dimension: active_view_ctr {
    type: number
    sql: ${TABLE}.ActiveViewCtr  ;;
  }

  dimension: active_view_impressions {
    type: number
    sql: ${TABLE}.ActiveViewImpressions ;;
  }

  dimension: active_view_measurability {
    type: number
    sql: ${TABLE}.ActiveViewMeasurability  ;;
  }

  dimension: active_view_measurable_cost {
    type: number
    sql: ${TABLE}.ActiveViewMeasurableCost  ;;
  }

  dimension: active_view_measurable_impressions {
    type: number
    sql: ${TABLE}.ActiveViewMeasurableImpressions ;;
  }

  dimension: active_view_viewability {
    type: number
    sql: ${TABLE}.ActiveViewViewability  ;;
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
    sql: ${TABLE}.AverageCost ;;
  }

  dimension: average_cpc {
    type: number
    sql: ${TABLE}.AverageCpc  ;;
  }

  dimension: cost_per_click {
    type: number
    sql: ${cost}/(NULLIF(${clicks},0)) ;;
  }

  dimension: average_cpm {
    type: number
    sql: ${TABLE}.AverageCpm  ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.AveragePosition  ;;
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
    sql: ${TABLE}.Clicks ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.ConversionRate ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.ConversionValue  ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions  ;;
  }

  dimension: cost {
    type: number
    sql: (${TABLE}.Cost/1000000)  ;;
  }

  dimension: cost_per_conversion {
    type: number
    sql: ${TABLE}.CostPerConversion  ;;
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
    sql: ${TABLE}.GmailForwards  ;;
  }

  dimension: gmail_saves {
    type: number
    sql: ${TABLE}.GmailSaves  ;;
  }

  dimension: gmail_secondary_clicks {
    type: number
    sql: ${TABLE}.GmailSecondaryClicks  ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions  ;;
  }

  dimension: interaction_rate {
    type: number
    sql: ${TABLE}.InteractionRate ;;
  }

  dimension: interaction_types {
    type: string
    sql: ${TABLE}.InteractionTypes;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.Interactions ;;
  }

  dimension: is_negative {
    type: yesno
    sql: ${TABLE}.IsNegative ;;
  }

  dimension_group: month {
    type: time
    hidden: yes
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
    hidden: yes
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
    sql: ${TABLE}.ValuePerConversion   ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.ViewThroughConversions  ;;
  }

  dimension_group: week {
    type: time
    hidden: yes
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
    hidden: yes
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
    drill_fields: [campaign_id,date_date,clicks]
  }

  measure: average_cost_per_conversion {
    type:  number
    sql: ${total_cost}/(NULLIF(${total_conversions},0)) ;;
    value_format_name: usd
  }

}
