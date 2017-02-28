view: keyword {
  sql_table_name: (SELECT * FROM adwords_v201609.Keyword_6747157124 WHERE _data_date=_latest_date) ;;

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
    sql: ${TABLE}._DATA_DATE ;;
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

  dimension: unique_key {
    type: string
    primary_key: yes
#     hidden: yes
    sql: CONCAT(CAST(${TABLE}.AdGroupId AS STRING),CAST(${TABLE}.CriterionID AS STRING)) ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: approval_status {
    type: string
    sql: ${TABLE}.ApprovalStatus ;;
  }

  dimension: bid_type {
    type: string
    sql: ${TABLE}.BidType ;;
  }

  dimension: bidding_strategy_id {
    type: number
    sql: ${TABLE}.BiddingStrategyId ;;
  }

  dimension: bidding_strategy_name {
    type: string
    sql: ${TABLE}.BiddingStrategyName ;;
  }

  dimension: bidding_strategy_source {
    type: string
    sql: ${TABLE}.BiddingStrategySource ;;
  }

  dimension: bidding_strategy_type {
    type: string
    sql: ${TABLE}.BiddingStrategyType ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: cpc_bid {
    type: string
    sql: ${TABLE}.CpcBid ;;
  }

  dimension: cpc_bid_source {
    type: string
    sql: ${TABLE}.CpcBidSource ;;
  }

  dimension: cpm_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CpmBid ;;
  }

  dimension: creative_quality_score {
    type: string
    sql: ${TABLE}.CreativeQualityScore ;;
  }

  dimension: criteria {
    type: string
    sql: ${TABLE}.Criteria ;;
  }

  dimension: criteria_destination_url {
    type: string
    sql: ${TABLE}.CriteriaDestinationUrl ;;
  }

  dimension: criterion_id {
    type: number
    sql: ${TABLE}.CriterionId ;;
  }

  dimension: enhanced_cpc_enabled {
    type: yesno
    sql: ${TABLE}.EnhancedCpcEnabled ;;
  }

  dimension: estimated_add_clicks_at_first_position_cpc {
    type: number
    sql: ${TABLE}.EstimatedAddClicksAtFirstPositionCpc ;;
  }

  dimension: estimated_add_cost_at_first_position_cpc {
    type: number
    sql: ${TABLE}.EstimatedAddCostAtFirstPositionCpc ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: final_app_urls {
    type: string
    sql: ${TABLE}.FinalAppUrls ;;
  }

  dimension: final_mobile_urls {
    type: string
    sql: ${TABLE}.FinalMobileUrls ;;
  }

  dimension: final_urls {
    type: string
    sql: ${TABLE}.FinalUrls ;;
  }

  dimension: first_page_cpc {
    type: string
    sql: ${TABLE}.FirstPageCpc ;;
  }

  dimension: first_position_cpc {
    type: string
    sql: ${TABLE}.FirstPositionCpc ;;
  }

  dimension: has_quality_score {
    type: yesno
    sql: ${TABLE}.HasQualityScore ;;
  }

  dimension: is_negative {
    type: yesno
    sql: ${TABLE}.IsNegative ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.KeywordMatchType ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.LabelIds ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.Labels ;;
  }

  dimension: post_click_quality_score {
    type: string
    sql: ${TABLE}.PostClickQualityScore ;;
  }

  dimension: quality_score {
    type: number
    sql: ${TABLE}.QualityScore ;;
  }

  dimension: search_predicted_ctr {
    type: string
    sql: ${TABLE}.SearchPredictedCtr ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: system_serving_status {
    type: string
    sql: ${TABLE}.SystemServingStatus ;;
  }

  dimension: top_of_page_cpc {
    type: string
    sql: ${TABLE}.TopOfPageCpc ;;
  }

  dimension: tracking_url_template {
    type: string
    sql: ${TABLE}.TrackingUrlTemplate ;;
  }

  dimension: url_custom_parameters {
    type: string
    sql: ${TABLE}.UrlCustomParameters ;;
  }

  measure: count {
    type: number
    sql: count(${unique_key}) * rand() / 5;;
    drill_fields: [bidding_strategy_name]
  }
}
