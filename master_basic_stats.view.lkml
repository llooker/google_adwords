include: "entity_base.view.lkml"


view: stats {
  extension: required

  dimension: cost_usd {
    type: number
    sql: (${cost} / 1000000) ;;
  }

  measure: total_cost {
    hidden: yes
    type: sum
    sql: ${cost} ;;
  }

  measure: total_cost_usd {
    label: "Cost"
    type: sum
    sql: ${cost_usd} ;;
    value_format_name: usd_0
  }

  measure: total_conversions {
    label: "Conversions"
    type: sum
    sql: ${conversions} ;;
    value_format_name: decimal_0
  }

  measure: total_impressions {
    label: "Impressions"
    type:  sum
    sql:  ${impressions} ;;
    drill_fields: [external_customer_id, total_impressions]
    value_format_name: decimal_0
  }

  measure: total_interactions {
    label: "Interactions"
    type:  sum
    sql:  ${interactions} ;;
    drill_fields: [external_customer_id, total_impressions]
    value_format_name: decimal_0
  }

  measure: total_clicks {
    label: "Clicks"
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

view: base_stats {
  extends: [base]      ## from entity base table
  extension: required

  dimension_group: date {
    hidden: yes
  }
  dimension: day_of_week {
    hidden: yes
  }
  dimension: month {
    hidden: yes
  }
  dimension: month_of_year {
    hidden: yes
  }
  dimension: quarter {
    hidden: yes
  }
  dimension: week {
    hidden: yes
  }
  dimension: year {
    hidden: yes
  }
}



view: master_stats {
  extends: [ad_criterion_base, base, stats]

  sql_table_name:
  {% if (ad._in_query or master_stats.creative_id._in_query) %}
    adwords_v201609.AdBasicStats_6747157124
  {% elsif (audience._in_query or master_stats.audience_criterion_id._in_query) %}
    adwords_v201609.AudienceBasicStats_6747157124
  {% elsif (keyword._in_query or master_stats.criteria_id._in_query) %}
    adwords_v201609.KeywordBasicStats_6747157124
  {% elsif (ad_group._in_query or master_stats.ad_group_id._in_query) %}
    {% if master_stats.hour_of_day._in_query %}
      adwords_v201609.HourlyAdGroupStats_6747157124
    {% else %}
      adwords_v201609.AdGroupBasicStats_6747157124
    {% endif %}
  {% elsif (campaign._in_query or master_stats.campaign_id._in_query) %}
    {% if master_stats.hour_of_day._in_query %}
      adwords_v201609.HourlyCampaignStats_6747157124
    {% else %}
      adwords_v201609.CampaignBasicStats_6747157124
    {% endif %}
  {% else %}
    {% if master_stats.hour_of_day._in_query %}
      adwords_v201609.HourlyAccountStats_6747157124
    {% else %}
      adwords_v201609.AccountBasicStats_6747157124
    {% endif %}
  {% endif %} ;;

    dimension: _data {
      sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
    }

    dimension: _latest {
      sql: TIMESTAMP(${TABLE}._LATEST_DATE) ;;
    }

    dimension: hour_of_day {
      type: number
      sql: ${TABLE}.HourOfDay ;;
    }

    dimension: audience_criterion_id {
      type: number
      sql: ${TABLE}.CriterionId ;;
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

    dimension: average_position {
      type: number
      sql: ${TABLE}.AveragePosition ;;
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

    dimension: creative_id {
      type: number
      sql: ${TABLE}.CreativeId ;;
    }

    dimension: criterion_id {
      type: number
      sql: ${TABLE}.CriterionId ;;
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

  dimension: week_of_year {
    type: string
    sql: CAST(FORMAT_TIMESTAMP('%V', TIMESTAMP(${TABLE}.Date) ) AS INT64);;
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
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: total_clicks {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: total_interactions {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: total_conversions {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: total_cost_usd {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: average_interaction_rate {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: average_click_rate {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: average_conversion_rate {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: average_cost_per_click {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }
    measure: average_cost_per_conversion {
      link: {
        label: "Drill"
        url: "/explore/google_adwords/master_stats?fields={% if master_stats.creative_id._in_query %}master_stats.creative_id,ads.creative,master_stats.criterion_id,keywords.criteria{% elsif master_stats.criterion_id._in_query %}master_stats.criterion_id,keywords.criteria{% elsif master_stats.ad_group_id._in_query %}master_stats.ad_group_id,ad_group.ad_group_name{% else %}master_stats.campaign_id,campaign.campaign_name{% endif %}master_stats.total_impressions,master_stats.total_interactions,master_stats.total_conversions,master_stats.total_cost_usd,master_stats.average_interaction_rate,master_stats.average_conversion_rate,master_stats.average_cost_per_impression,master_stats.average_cost_per_click,master_stats.average_cost_per_conversion&f[master_stats._data_date]=7+days&sorts=master_stats.total_impressions+desc&limit=10&vis=%7B%22type%22%3A%22table%22%2C%22show_view_names%22%false%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22enable_conditional_formatting%22%3Afalse%2C%22conditional_formatting_include_totals%22%3Afalse%2C%22conditional_formatting_include_nulls%22%3Afalse%7D"
        icon_url: "http://www.looker.com/favicon.ico"
      }
    }

  }
