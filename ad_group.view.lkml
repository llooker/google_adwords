include: "entity_base.view.lkml"

view: ad_group {
  extends: [entity_base]
  sql_table_name: adwords_v201609.AdGroup_6747157124 ;;

  dimension: _data {
    sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
  }

  dimension: _latest {
    sql: TIMESTAMP(${TABLE}._LATEST_DATE) ;;
  }

  dimension: ad_group_desktop_bid_modifier {
    type: number
    sql: ${TABLE}.AdGroupDesktopBidModifier ;;
  }

  dimension: ad_group_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: ad_group_mobile_bid_modifier {
    type: number
    sql: ${TABLE}.AdGroupMobileBidModifier ;;
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AdGroupName ;;
    link: {
      label: "Ad Group Dashboard"
      url: "/dashboards/adwords_demo::ad_performance?Ad%20Group%20Name={{ value | encode_uri }}&Campaign%20Name={{ campaign.campaign_name._value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.AdGroupStatus ;;
  }

  dimension: ad_group_tablet_bid_modifier {
    type: number
    sql: ${TABLE}.AdGroupTabletBidModifier ;;
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

  dimension: content_bid_criterion_type_group {
    type: string
    sql: ${TABLE}.ContentBidCriterionTypeGroup ;;
  }

  dimension: cpc_bid {
    hidden: yes
    type: string
    sql: ${TABLE}.CpcBid ;;
  }

  dimension: cpm_bid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.CpmBid ;;
  }

  dimension: cpv_bid {
    hidden: yes
    type: string
    sql: ${TABLE}.CpvBid ;;
  }

  dimension: enhanced_cpc_enabled {
    type: yesno
    sql: ${TABLE}.EnhancedCpcEnabled ;;
  }

  dimension: enhanced_cpv_enabled {
    type: yesno
    sql: ${TABLE}.EnhancedCpvEnabled ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.LabelIds ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.Labels ;;
  }

  dimension: target_cpa {
    hidden: yes
    type: number
    sql: ${TABLE}.TargetCpa ;;
  }

  dimension: target_cpa_bid_source {
    type: string
    sql: ${TABLE}.TargetCpaBidSource ;;
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
    type: count
    drill_fields: [detail*]
  }

  dimension: cpc_bid_usd {
    type: number
    sql: (${cpc_bid} / 1000000)  ;;
  }

  dimension: cpm_bid_usd {
    type: number
    sql: (${cpm_bid} / 1000000) ;;
  }

  dimension: cpv_bid_usd {
    type: number
    sql: (${cpv_bid} / 1000000) ;;
  }

  dimension: target_cpa_usd {
    type: number
    sql: (${target_cpa} / 1000000) ;;
  }

  # ----- Detail ------
  set: detail {
    fields: [ad_group_id, ad_group_name, ad_group_status, cpc_bid, ad.count, keyword.count]
  }
}