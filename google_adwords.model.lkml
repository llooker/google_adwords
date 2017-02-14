connection: "bigquery-connectors-adwords"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: ad {
  label: "Ads"
  view_label: "Ads"

  join: ad_group {
    view_label: "Ad Groups"
    sql_on: ${ad.ad_group_id} = ${ad_group.ad_group_id} ;;
    relationship: many_to_one
  }
  join: campaign {
    view_label: "Campaigns"
    sql_on: ${ad_group.campaign_id} = ${campaign.campaign_id} ;;
    relationship: many_to_one
  }
}

explore: ad_group {}

explore: campaign {}
