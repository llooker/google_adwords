- dashboard: Account Performance Overview
  layout: newspaper
  elements:
  - name: Total Campaigns
    label: Total Campaigns
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign.count
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 2
  - name: Total Cost
    label: Total Cost
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.total_cost
    sorts:
    - campaign_stats.total_cost desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 2
  - name: Average Cost per Conversion
    label: Average Cost per Conversion
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.average_cost_per_conversion
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 2
  - name: Total Impressions
    label: Total Impressions
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.total_impressions
    sorts:
    - campaign_stats.total_impressions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Average Interaction Rate
    label: Average Interaction Rate
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.average_interaction_rate
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 2
    col: 12
    width: 6
    height: 2
  - name: Total Clicks
    label: Total Clicks
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.total_clicks
    sorts:
    - campaign_stats.total_clicks desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 2
    col: 6
    width: 6
    height: 2
  - name: Total Conversions
    label: Total Conversions
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.total_conversions
    sorts:
    - campaign_stats.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 2
  - name: Average Conversion Rate
    label: Average Conversion Rate
    model: google_adwords
    explore: campaign_stats
    type: single_value
    fields:
    - campaign_stats.average_conversion_rate
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 2
    col: 18
    width: 6
    height: 2
  - name: Campaign Cost by Ad Network over time (campaign)
    label: Campaign Performance by Device
    model: google_adwords
    explore: campaign_stats
    type: looker_area
    fields:
    - campaign_stats._data_date
    - campaign_stats.total_cost
    - campaign_stats.ad_network_type
    pivots:
    - campaign_stats.ad_network_type
    sorts:
    - campaign_stats._data_date desc
    - campaign_stats.ad_network_type
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    ordering: none
    show_null_labels: false
    series_types: {}
    hidden_series:
    - SHASTA_AD_NETWORK_TYPE_1_CONTENT - SHASTA_AD_NETWORK_TYPE_2_CONTENT
    listen: {}
    row: 4
    col: 0
    width: 12
    height: 8
  - name: Campaign Details
    label: All Campaigns Full Details
    model: google_adwords
    explore: campaign_stats
    type: table
    fields:
    - campaign.campaign_name
    - campaign_stats.total_cost
    - campaign_stats.total_impressions
    - campaign_stats.total_interactions
    - campaign_stats.total_conversions
    - campaign_stats.average_interaction_rate
    - campaign_stats.average_conversion_rate
    - campaign_stats.average_cost_per_click
    - campaign_stats.average_cost_per_conversion
    sorts:
    - campaign_stats.total_cost desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 27
    col: 0
    width: 24
    height: 8
  - name: Average Cost per Conversion over time (campaign)
    label: Average Cost per Conversion over time (campaign)
    model: google_adwords
    explore: campaign_stats
    type: looker_line
    fields:
    - campaign_stats.average_cost_per_conversion
    - campaign_stats._data_date
    - campaign_stats.total_cost
    sorts:
    - campaign_stats._data_date
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types:
      Content - campaign_stats.total_cost: column
      Search - campaign_stats.total_cost: column
      Search Partners - campaign_stats.total_cost: column
    show_dropoff: true
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: campaign_stats.average_cost_per_conversion
        name: Campaign Stats Average Cost per Conversion
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: campaign_stats.total_cost
        name: Campaign Stats Total Cost
    discontinuous_nulls: false
    focus_on_hover: false
    hidden_fields: []
    hidden_series:
    - campaign_stats.total_cost
    listen: {}
    row: 4
    col: 12
    width: 12
    height: 8
  - name: Funnel by Ad Network (campaign)
    label: Funnel by Ad Network (campaign)
    model: google_adwords
    explore: campaign_stats
    type: looker_column
    fields:
    - campaign_stats.ad_network_type
    - campaign_stats.total_impressions
    - campaign_stats.total_interactions
    - campaign_stats.total_conversions
    sorts:
    - campaign_stats.total_impressions desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types: {}
    show_dropoff: true
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: log
      unpinAxis: false
      valueFormat:
      series:
      - id: campaign_stats.total_impressions
        name: Campaign Stats Total Impressions
      - id: campaign_stats.total_interactions
        name: Campaign Stats Total Interactions
      - id: campaign_stats.total_conversions
        name: Campaign Stats Total Conversions
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 8
  - name: Average Cost per Conversion by Ad Network over time (campaign)
    label: Average Cost per Conversion by Ad Network over time (campaign)
    model: google_adwords
    explore: campaign_stats
    type: looker_line
    fields:
    - campaign_stats.ad_network_type
    - campaign_stats.average_cost_per_conversion
    - campaign_stats._data_date
    pivots:
    - campaign_stats.ad_network_type
    sorts:
    - campaign_stats._data_date desc
    - campaign_stats.ad_network_type
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types: {}
    show_dropoff: true
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: log
      unpinAxis: false
      valueFormat:
      series:
      - id: campaign_stats.total_impressions
        name: Campaign Stats Total Impressions
      - id: campaign_stats.total_interactions
        name: Campaign Stats Total Interactions
      - id: campaign_stats.total_conversions
        name: Campaign Stats Total Conversions
    discontinuous_nulls: false
    focus_on_hover: false
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 8
  - name: Hourly Average Cost per Conversion (campaign)
    label: Hourly Average Cost per Conversion (campaign)
    model: google_adwords
    explore: hourly_campaign_stats
    type: looker_column
    fields:
    - hourly_campaign_stats.hour_of_day
    - hourly_campaign_stats.total_impressions
    - hourly_campaign_stats.total_interactions
    - hourly_campaign_stats.total_conversions
    - hourly_campaign_stats.total_cost
    - hourly_campaign_stats.average_interaction_rate
    - hourly_campaign_stats.average_conversion_rate
    - hourly_campaign_stats.average_cost_per_click
    - hourly_campaign_stats.average_cost_per_conversion
    sorts:
    - hourly_campaign_stats.hour_of_day
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    hidden_fields:
    - hourly_campaign_stats.total_impressions
    - hourly_campaign_stats.total_interactions
    - hourly_campaign_stats.total_conversions
    - hourly_campaign_stats.total_cost
    - hourly_campaign_stats.average_interaction_rate
    - hourly_campaign_stats.average_conversion_rate
    - hourly_campaign_stats.average_cost_per_click
    listen: {}
    row: 20
    col: 0
    width: 12
    height: 7
  - name: Day of Week Average Cost per Conversion (campaign)
    label: Day of Week Average Cost per Conversion (campaign)
    model: google_adwords
    explore: campaign_stats
    type: looker_column
    fields:
    - campaign_stats.total_impressions
    - campaign_stats.total_interactions
    - campaign_stats.total_conversions
    - campaign_stats.total_cost
    - campaign_stats.average_interaction_rate
    - campaign_stats.average_conversion_rate
    - campaign_stats.average_cost_per_click
    - campaign_stats.average_cost_per_conversion
    - campaign_stats.day_of_week_clean
    sorts:
    - campaign_stats.total_impressions desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - campaign_stats.total_impressions
    - campaign_stats.total_interactions
    - campaign_stats.total_conversions
    - campaign_stats.total_cost
    - campaign_stats.average_interaction_rate
    - campaign_stats.average_conversion_rate
    - campaign_stats.average_cost_per_click
    listen: {}
    row: 20
    col: 12
    width: 12
    height: 7
