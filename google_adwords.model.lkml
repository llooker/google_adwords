connection: "bigquery-connectors-adwords"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

## Entity tables are daily snapshots
explore: customer {
  conditionally_filter: {
    filters: {
      field: latest
      value: "Yes"
    }
    unless: [_data_date]
  }
}

explore: campaign {
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

explore: hourly_ad_group_stats {
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

explore: hourly_campaign_stats {
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
  view_label: "Campaign Campaign Stats"

  join: campaign {
    view_label: "Campaign"
    sql_on: ${campaign_budget_stats.campaign_id} = ${campaign.campaign_id}  AND
      ${campaign_budget_stats._data_raw} = ${campaign._data_raw} ;;
    relationship: many_to_one
  }
}

explore: keyword_stats {
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

explore: geo_stats {
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

explore: account_stats {
  join:  customer {
    view_label: "Customer"
    sql_on: ${account_stats.external_customer_id} = ${customer.external_customer_id} AND
      ${account_stats._data_raw} = ${customer._data_raw} ;;
    relationship: many_to_one
  }
}
