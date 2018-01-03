include: "stats.view.lkml"
include: "base_quarter_stats.view.lkml"
include: "master.explore.lkml"

view: account_quarter_stats {
  extends: ["stats", "base_quarter_stats"]

  derived_table: {
    persist_for: "24 hours"
    explore_source: master_stats {
      column: _data_quarter {}
      column: external_customer_id {}
      column: cost { field: master_stats.total_cost }
      column: clicks { field: master_stats.total_clicks }
      column: conversions { field: master_stats.total_conversions }
      column: impressions { field: master_stats.total_impressions }
      column: interactions { field: master_stats.total_interactions }
      filters: {
        field: master_stats.less_than_current_day_of_quarter
        value: "Yes"
      }
    }
  }
  dimension: external_customer_id {
    type: number
  }
  measure: total_impressions {
    drill_fields: [customer.detail*, total_impressions]
  }
  measure: total_clicks {
    drill_fields: [customer.detail*, total_clicks]
  }
  measure: total_interactions {
    drill_fields: [customer.detail*, total_interactions]
  }
  measure: total_conversions {
    drill_fields: [customer.detail*, total_conversions]
  }
  measure: total_cost_usd {
    drill_fields: [customer.detail*, total_cost_usd]
  }
  measure: average_interaction_rate {
    drill_fields: [customer.detail*, average_interaction_rate]
  }
  measure: average_click_rate {
    drill_fields: [customer.detail*, average_click_rate]
  }
  measure: average_conversion_rate {
    drill_fields: [customer.detail*, average_conversion_rate]
  }
  measure: average_cost_per_click {
    drill_fields: [customer.detail*, average_cost_per_click]
  }
  measure: average_cost_per_conversion {
    drill_fields: [customer.detail*, average_cost_per_conversion]
  }
}
