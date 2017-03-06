view: ad {
  sql_table_name: (select * from `bigquery-connectors.adwords_v201609.Ad_6747157124` where _LATEST_DATE = _DATA_DATE)  ;;
## must limit the table scope using latest_date = _data_date to ensure we're always using the latest recorded informaiton

  dimension: block_name {
    type: string
    sql: "Adwords" ;;
    link: {
      url: "https://googlecloud.looker.com/dashboards/55"
      label: "Adwords Dashboard"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }


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

  dimension: ad_group_ad_disapproval_reasons {
    type: string
    sql: ${TABLE}.AdGroupAdDisapprovalReasons ;;
  }

  dimension: ad_group_ad_trademark_disapproved {
    type: yesno
    sql: ${TABLE}.AdGroupAdTrademarkDisapproved ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.AdType ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.BusinessName ;;
  }

  dimension: call_only_phone_number {
    type: string
    sql: ${TABLE}.CallOnlyPhoneNumber ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: creative_approval_status {
    type: string
    sql: ${TABLE}.CreativeApprovalStatus ;;
  }

  dimension: creative_destination_url {
    type: string
    sql: ${TABLE}.CreativeDestinationUrl ;;
  }

  dimension: creative_final_app_urls {
    type: string
    sql: ${TABLE}.CreativeFinalAppUrls ;;
  }

  dimension: creative_final_mobile_urls {
    type: string
    sql: ${TABLE}.CreativeFinalMobileUrls ;;
  }

  dimension: creative_final_urls {
    type: string
    sql: ${TABLE}.CreativeFinalUrls ;;
  }

  dimension: creative_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.CreativeId ;;
    html: <p> Sample Ad ID </p> ;;
    action: {
      label: "Change Bid Price"
      url: "https://www.looker.com"
      icon_url: "https://www.google.com/favicon.ico"
      form_param: {
        name: "Change Bid Price"
        type: string
        required:  yes
      }
    }
    action: {
      label: "Change Status"
      url: "https://www.looker.com"
      icon_url: "https://www.google.com/favicon.ico"
      form_param: {
        name: "Change Status"
        type: select
        default: "Pause Campaign"
        option: {
          name: "Pause Campaign"
          label: "Pause Campaign"
        }
        option: {
          name: "Resume Campaign"
          label: "Resume Campaign"
        }
        required:  yes
      }
    }

  }

  dimension: creative_tracking_url_template {
    type: string
    sql: ${TABLE}.CreativeTrackingUrlTemplate ;;
  }

  dimension: creative_url_custom_parameters {
    type: string
    sql: ${TABLE}.CreativeUrlCustomParameters ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
  }

  dimension: description2 {
    type: string
    sql: ${TABLE}.Description2 ;;
  }

  dimension: device_preference {
    type: number
    sql: ${TABLE}.DevicePreference ;;
  }

  dimension: display_url {
    type: string
    sql: ${TABLE}.DisplayUrl ;;
  }

  dimension: enhanced_display_creative_logo_image_media_id {
    type: number
    sql: ${TABLE}.EnhancedDisplayCreativeLogoImageMediaId ;;
  }

  dimension: enhanced_display_creative_marketing_image_media_id {
    type: number
    sql: ${TABLE}.EnhancedDisplayCreativeMarketingImageMediaId ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: headline {
    type: string
    sql: ${TABLE}.Headline ;;
  }

  dimension: headline_part1 {
    type: string
    sql: ${TABLE}.HeadlinePart1 ;;
    html: Sample Keyword Name ;;
  }

  dimension: headline_part2 {
    type: string
    sql: ${TABLE}.HeadlinePart2 ;;
  }

  dimension: image_ad_url {
    type: string
    sql: ${TABLE}.ImageAdUrl ;;
  }

  dimension: image_creative_image_height {
    type: number
    sql: ${TABLE}.ImageCreativeImageHeight ;;
  }

  dimension: image_creative_image_width {
    type: number
    sql: ${TABLE}.ImageCreativeImageWidth ;;
  }

  dimension: image_creative_name {
    type: string
    sql: ${TABLE}.ImageCreativeName ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.LabelIds ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.Labels ;;
  }

  dimension: long_headline {
    type: string
    sql: ${TABLE}.LongHeadline ;;
  }

  dimension: path1 {
    type: string
    sql: ${TABLE}.Path1 ;;
  }

  dimension: path2 {
    type: string
    sql: ${TABLE}.Path2 ;;
  }

  dimension: short_headline {
    type: string
    sql: ${TABLE}.ShortHeadline ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: trademarks {
    type: string
    sql: ${TABLE}.Trademarks ;;
  }

  measure: count {
    type: number
    sql: count(${ad_group_id}) * rand() / 5 ;;
    drill_fields: [image_creative_name, business_name]
  }
}
