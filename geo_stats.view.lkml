include: "stats.view.lkml"

view: geo_stats {
  extends: [stats]

  sql_table_name: adwords_v201609.GeoStats_6747157124 ;;

  dimension_group: _data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week
    ]
    convert_tz: no
    sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
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
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: ad_format {
    type: string
    sql: ${TABLE}.AdFormat ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AdGroupName ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.AdGroupStatus ;;
  }

  dimension: ad_network_type1 {
    type: string
    sql: ${TABLE}.AdNetworkType1 ;;
  }

  dimension: ad_network_type2 {
    type: string
    sql: ${TABLE}.AdNetworkType2 ;;
  }

  dimension: all_conversion_rate {
    type: number
    sql: ${TABLE}.AllConversionRate ;;
  }

  dimension: all_conversion_value {
    type: number
    sql: ${TABLE}.AllConversionValue ;;
  }

  dimension: all_conversions {
    type: number
    sql: ${TABLE}.AllConversions ;;
  }

  dimension: average_cost {
    type: number
    sql: ${TABLE}.AverageCost ;;
  }

  dimension: average_cpc {
    type: number
    sql: ${TABLE}.AverageCpc ;;
  }

  dimension: average_cpm {
    type: number
    sql: ${TABLE}.AverageCpm ;;
  }

  dimension: average_cpv {
    type: number
    sql: ${TABLE}.AverageCpv ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.AveragePosition ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: city_criteria_id {
    type: number
    sql: ${TABLE}.CityCriteriaId ;;
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

  dimension: cost_per_all_conversion {
    type: number
    sql: ${TABLE}.CostPerAllConversion ;;
  }

  dimension: cost_per_conversion {
    type: number
    sql: ${TABLE}.CostPerConversion ;;
  }

  dimension: country_criteria_id {
    type: number
    sql: ${TABLE}.CountryCriteriaId ;;
  }

  dimension: cross_device_conversions {
    type: number
    sql: ${TABLE}.CrossDeviceConversions ;;
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  dimension: interaction_rate {
    type: number
    sql: ${TABLE}.InteractionRate ;;
  }

  dimension: interaction_types {
    type: string
    sql: ${TABLE}.InteractionTypes ;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.Interactions ;;
  }

  dimension: is_targeting_location {
    type: yesno
    sql: ${TABLE}.IsTargetingLocation ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.LocationType ;;
  }

  dimension: metro_criteria_id {
    type: number
    sql: ${TABLE}.MetroCriteriaId ;;
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

  dimension: most_specific_criteria_id {
    type: number
    sql: ${TABLE}.MostSpecificCriteriaId ;;
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

  dimension: region_criteria_id {
    type: number
    sql: ${TABLE}.RegionCriteriaId ;;
  }

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: value_per_conversion {
    type: number
    sql: ${TABLE}.ValuePerConversion ;;
  }

  dimension: video_view_rate {
    type: number
    sql: ${TABLE}.VideoViewRate ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}.VideoViews ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.ViewThroughConversions ;;
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
    drill_fields: [detail*, ad_group.detail*]
  }

  measure: total_cost {
    drill_fields: [detail*]
  }
  measure: total_conversions {
    drill_fields: [detail*]
  }
  measure: total_impressions {
    drill_fields: [detail*]
  }
  measure: total_interactions {
    drill_fields: [detail*]
  }
  measure: total_clicks {
    drill_fields: [detail*]
  }
  measure: average_interaction_rate {
    drill_fields: [detail*]
  }
  measure: average_cost_per_conversion {
    drill_fields: [detail*]
  }
  measure: average_cost_per_click {
    drill_fields: [detail*]
  }
  measure: average_conversion_rate {
    drill_fields: [detail*]
  }

  # ----- Detail ------
  set: detail {
    fields: [most_specific_criteria_id, ad_group_name]
  }
}
