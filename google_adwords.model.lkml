connection: "bigquery-connectors-adwords"

# include all the views
include: "*.view"
include: "/exchange_rates/bq.explore.lkml"

# include all the dashboards
include: "*.dashboard"

## Entity tables are daily snapshots
explore: customer {
  persist_for: "24 hours"
  hidden: yes
  conditionally_filter: {
    filters: {
      field: latest
      value: "Yes"
    }
    unless: [_data_date]
  }
}

explore: campaign {
  persist_for: "24 hours"
  hidden: yes
  conditionally_filter: {
    filters: {
      field: latest
      value: "Yes"
    }
    unless: [_data_date]
  }
  join: customer {
    view_label: "Customer"
    sql_on: ${campaign.external_customer_id} = ${customer.external_customer_id} AND
      ${campaign._data_raw} = ${customer._data_raw} ;;
    relationship:  many_to_one
  }
}

explore: ad_group {
  hidden: yes
  persist_for: "24 hours"
  conditionally_filter: {
    filters: {
      field: latest
      value: "Yes"
    }
    unless: [_data_date]
  }
  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign.campaign_id} = ${ad_group.campaign_id} AND
      ${ad_group._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: keyword {
  hidden: yes
  persist_for: "24 hours"
  conditionally_filter: {
    filters: {
      field: latest
      value: "Yes"
    }
    unless: [_data_date]
  }
  join: ad_group {
    view_label: "Keyword"
    sql_on: ${keyword.ad_group_id} = ${ad_group.ad_group_id} AND
      ${keyword._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: ad {
    view_label: "Ads"
    sql_on: ${ad.ad_group_id} = ${ad_group.ad_group_id} AND
      ${ad._data_raw} = ${ad_group._data_raw} ;;
    relationship:  many_to_one
  }
}

explore: ad {
  hidden: yes
  persist_for: "24 hours"
  conditionally_filter: {
    filters: {
      field: latest
      value: "Yes"
    }
    unless: [_data_date]
  }
  join: ad_group {
    view_label: "Ad Group"
    sql_on: ${ad.ad_group_id} = ${ad_group.ad_group_id}  AND
      ${ad._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign.campaign_id} = ${ad_group.campaign_id} AND
      ${ad_group._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
  join: customer {
    view_label: "Customer"
    sql_on: ${campaign.external_customer_id} = ${customer.external_customer_id} AND
      ${campaign._data_raw} = ${customer._data_raw} ;;
    relationship:  many_to_one
  }
}

## Stats tables are used as left-most tables. See "README" for explanation of join logic.
explore: ad_stats {
  persist_for: "24 hours"
  label: "Ad Stats"
  view_label: "Ad Stats"

  join: keyword {
    view_label: "Keyword"
    sql_on: ${ad_stats.unique_key} = ${keyword.unique_key} AND
      ${ad_stats._data_raw} = ${keyword._data_raw} ;;
    relationship: many_to_one
  }
  join: ad {
    view_label: "Ads"
    sql_on: ${ad.creative_id} = ${ad_stats.creative_id} AND
      ${ad_stats._data_raw} = ${ad._data_raw} ;;
    relationship:  many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${ad.ad_group_id} = ${ad_group.ad_group_id} AND
      ${ad_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${ad_group.campaign_id} = ${campaign.campaign_id} AND
      ${ad_stats._data_raw} = ${campaign._data_raw};;
    relationship: many_to_one
  }
}

explore: ad_basic_stats {
  persist_for: "24 hours"
  label: "Ad Stats"
  view_label: "Ad Stats"

  join: keyword {
    view_label: "Keyword"
    sql_on: ${ad_basic_stats.unique_key} = ${keyword.unique_key} AND
      ${ad_basic_stats._data_raw} = ${keyword._data_raw} ;;
    relationship: many_to_one
  }
  join: ad {
    view_label: "Ads"
    sql_on: ${ad.creative_id} = ${ad_basic_stats.creative_id} AND
      ${ad_basic_stats._data_raw} = ${ad._data_raw} ;;
    relationship:  many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${ad.ad_group_id} = ${ad_group.ad_group_id} AND
      ${ad._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${ad_group.campaign_id} = ${campaign.campaign_id} AND
      ${ad_group._data_raw} = ${campaign._data_raw};;
    relationship: many_to_one
  }
}

explore: hourly_ad_group_stats {
  persist_for: "24 hours"
  label: "Hourly Ad Group Stats"
  view_label: "Hourly Ad Group Stats"

  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${hourly_ad_group_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${hourly_ad_group_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }

  join: campaign {
    view_label: "Campaigns"
    sql_on: ${ad_group.campaign_id} = ${campaign.campaign_id} AND
      ${hourly_ad_group_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore:ad_group_stats {
  persist_for: "24 hours"
  label: "Ad Group Stats"
  view_label: "Ad Group Stats"

  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${ad_group_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${ad_group_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }

  join: campaign {
    view_label: "Campaigns"
    sql_on: ${ad_group.campaign_id} = ${campaign.campaign_id}  AND
      ${ad_group_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore:ad_group_basic_stats {
  label: "Ad Group Stats"
  view_label: "Ad Group Stats"

  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${ad_group_basic_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${ad_group_basic_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }

  join: campaign {
    view_label: "Campaigns"
    sql_on: ${ad_group.campaign_id} = ${campaign.campaign_id}  AND
      ${ad_group._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: keyword_stats {
  persist_for: "24 hours"
  label: "Keyword Stats"
  view_label: "Keyword Stats"

  join: keyword {
    view_label: "Keyword"
    sql_on: ${keyword_stats.unique_key} = ${keyword.unique_key} AND
      ${keyword_stats._data_raw} = ${keyword._data_raw} ;;
    relationship: many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${keyword.ad_group_id} = ${ad_group.ad_group_id} AND
      ${keyword._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${keyword.campaign_id} = ${campaign.campaign_id} AND
      ${keyword._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: keyword_basic_stats {
  persist_for: "24 hours"
  label: "Keyword Stats"
  view_label: "Keyword Stats"

  join: keyword {
    view_label: "Keyword"
    sql_on: ${keyword_basic_stats.unique_key} = ${keyword.unique_key} AND
      ${keyword_basic_stats._data_raw} = ${keyword._data_raw} ;;
    relationship: many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${keyword.ad_group_id} = ${ad_group.ad_group_id} AND
      ${keyword._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${keyword.campaign_id} = ${campaign.campaign_id} AND
      ${keyword._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: geo_stats {
  persist_for: "24 hours"
  label: "Geo Stats"
  view_label: "Geo Stats"

  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${geo_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${geo_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${geo_stats.campaign_id} = ${campaign.campaign_id} AND
      ${geo_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: audience_stats {
  label: "Audience Stats"
  view_label: "Audience Stats"

  join: audience {
    view_label: "Audience"
    sql_on: ${audience_stats.unique_key} = ${audience.unique_key} AND
      ${audience_stats._data_raw} = ${audience._data_raw} ;;
    relationship: many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${audience_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${audience_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${audience_stats.campaign_id} = ${campaign.campaign_id} AND
      ${audience_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: audience_basic_stats {
  label: "Audience Stats"
  view_label: "Audience Stats"

  join: audience {
    view_label: "Audience"
    sql_on: ${audience_basic_stats.unique_key} = ${audience.unique_key} AND
      ${audience_basic_stats._data_raw} = ${audience._data_raw} ;;
    relationship: many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${audience_basic_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${audience_basic_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${audience_basic_stats.campaign_id} = ${campaign.campaign_id} AND
      ${audience_basic_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: campaign_stats {
  label: "Campaign Stats"
  view_label: "Campaign Stats"

  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign_stats.campaign_id} = ${campaign.campaign_id} AND
      ${campaign_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: campaign_basic_stats {
  label: "Campaign Stats"
  view_label: "Campaign Stats"

  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign_basic_stats.campaign_id} = ${campaign.campaign_id} AND
      ${campaign_basic_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: account_quarter_stats {
  persist_for: "24 hours"
  label: "Account Quarter Stats"
  view_label: "Account Quarter Stats"

  join: last_account_quarter_stats {
    from: account_quarter_stats
    view_label: "Last Quarter Account Stats"
    sql_on: ${account_quarter_stats.external_customer_id} = ${last_account_quarter_stats.external_customer_id} AND
      ${account_quarter_stats._data_last_quarter} = ${last_account_quarter_stats._data_quarter} ;;
    relationship: one_to_one
  }
#   join:  customer {
#     view_label: "Customer"
#     sql_on: ${account_quarter_stats.external_customer_id} = ${customer.external_customer_id} AND
#       ${customer.latest} = 'Yes' ;;
#     relationship: many_to_one
#   }
}

explore: campaign_quarter_stats {
  persist_for: "24 hours"
  label: "Campaign Quarter Stats"
  view_label: "Campaign Quarter Stats"

  join: last_campaign_quarter_stats {
    from: campaign_quarter_stats
    view_label: "Last Quarter Campaign Stats"
    sql_on: ${campaign_quarter_stats.campaign_id} = ${last_campaign_quarter_stats.campaign_id} AND
      ${campaign_quarter_stats._data_last_quarter} = ${last_campaign_quarter_stats._data_quarter} ;;
    relationship: one_to_one
  }
  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign_quarter_stats.campaign_id} = ${campaign.campaign_id} AND
      ${campaign.latest} = 'Yes' ;;
    relationship: many_to_one
  }
}

explore: hourly_campaign_stats {
  persist_for: "24 hours"
  label: "Hourly Campaign Stats"
  view_label: "Hourly Campaign Stats"

  join: campaign {
    view_label: "Campaign"
    sql_on: ${hourly_campaign_stats.campaign_id} = ${campaign.campaign_id}  AND
      ${hourly_campaign_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: campaign_budget_stats {
  label: "Campaign Budget Stats"
  view_label: "Campaign Budget Stats"

  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign_budget_stats.campaign_id} = ${campaign.campaign_id}  AND
      ${campaign_budget_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: account_basic_stats {
  persist_for: "24 hours"
  label: "Account Stats"
  view_label: "Account Stats"

  join:  customer {
    view_label: "Customer"
    sql_on: ${account_basic_stats.external_customer_id} = ${customer.external_customer_id} AND
      ${account_basic_stats._data_raw} = ${customer._data_raw} ;;
    relationship: many_to_one
  }
}

explore: account_stats {
  persist_for: "24 hours"
  label: "Account Stats"
  view_label: "Account Stats"

  join:  customer {
    view_label: "Customer"
    sql_on: ${account_stats.external_customer_id} = ${customer.external_customer_id} AND
      ${account_stats._data_raw} = ${customer._data_raw} ;;
    relationship: many_to_one
  }
}

explore: hourly_account_stats {
  persist_for: "24 hours"
  join:  customer {
    view_label: "Customer"
    sql_on: ${hourly_account_stats.external_customer_id} = ${customer.external_customer_id} AND
      ${hourly_account_stats._data_raw} = ${customer._data_raw} ;;
    relationship: many_to_one
  }
}
explore: ad_stats_forex {
  from: ad_stats
  join: bq_forex_historical_real {
    relationship: many_to_one
    sql_on: ${bq_forex_historical_real.forex_exchange_date} = ${ad_stats_forex._data_date} ;;
  }
}
