# include all the views
include: "*.view"

## Stats tables are used as left-most tables. See "README" for explanation of join logic.
explore: master_stats {
  persist_for: "24 hours"
  label: "Ad Stats"
  view_label: "Ad Stats"

  join: keyword {
    view_label: "Keyword"
    sql_on: ${master_stats.unique_key} = ${keyword.unique_key} AND
      ${master_stats._data_raw} = ${keyword._data_raw} ;;
    relationship: many_to_one
  }
  join: audience {
    view_label: "Audience"
    sql_on: ${master_stats.unique_key} = ${audience.unique_key} AND
      ${master_stats._data_raw} = ${audience._data_raw} ;;
    relationship: many_to_one
  }
  join: ad {
    view_label: "Ads"
    sql_on: ${ad.creative_id} = ${master_stats.creative_id} AND
      ${master_stats._data_raw} = ${ad._data_raw} ;;
    relationship:  many_to_one
  }
  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${master_stats.ad_group_id} = ${ad_group.ad_group_id} AND
      ${master_stats._data_raw} = ${ad_group._data_raw} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${master_stats.campaign_id} = ${campaign.campaign_id} AND
      ${master_stats._data_raw} = ${campaign._data_raw};;
    relationship: many_to_one
  }
  join: customer {
    view_label: "Customer"
    sql_on: ${master_stats.external_customer_id} = ${customer.external_customer_id} AND
      ${master_stats._data_raw} = ${customer._data_raw} ;;
    relationship: many_to_one
  }
}
