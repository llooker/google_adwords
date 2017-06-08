- dashboard: Campaign Performance
  layout: newspaper
  elements:
  - name: Total Ad Groups
    label: Total ad groups
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group.count
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 0
    col: 0
    width: 6
    height: 2
  - name: Total cost
    label: Total Cost
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.total_cost_usd
    sorts:
    - ad_group_stats.total_cost_usd desc
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 0
    col: 6
    width: 6
    height: 2
  - name: Average cost per conversion Copy 7
    label: Average Cost per Conversion
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.average_cost_per_conversion
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 0
    col: 18
    width: 6
    height: 2
  - name: Total impressions
    label: Total Impressions
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.total_impressions
    sorts:
    - ad_group_stats.total_impressions desc
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Total conversions
    label: Total Conversions
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.total_conversions
    sorts:
    - ad_group_stats.total_conversions desc
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 0
    col: 12
    width: 6
    height: 2
  - name: Total clicks
    label: Total Clicks
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.total_clicks
    sorts:
    - ad_group_stats.total_clicks desc
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 2
    col: 6
    width: 6
    height: 2
  - name: Average interaction rate
    label: Average Interaction Rate
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.average_interaction_rate
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 2
    col: 12
    width: 6
    height: 2
  - name: Average conversion rate
    label: Average Conversion Rate
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.average_conversion_rate
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 2
    col: 18
    width: 6
    height: 2
  - name: Average cost per conversion over time (ad Group)
    label: Average Cost per Conversion over time (ad_group)
    model: google_adwords
    explore: ad_group_stats
    type: looker_line
    fields:
    - ad_group_stats.average_cost_per_conversion
    - ad_group_stats._data_date
    - ad_group_stats.total_cost_usd
    sorts:
    - ad_group_stats._data_date
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
      Content - ad_group_stats.total_cost_usd: column
      Search - ad_group_stats.total_cost_usd: column
      Search Partners - ad_group_stats.total_cost_usd: column
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
      - id: ad_group_stats.average_cost_per_conversion
        name: ad_group Stats Average Cost per Conversion
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 554
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 542
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
      - id: ad_group_stats.total_cost_usd
        name: ad_group Stats Total Cost
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 568
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 556
    discontinuous_nulls: false
    focus_on_hover: false
    hidden_fields: []
    hidden_series:
    - ad_group_stats.total_cost_usd
    listen:
      Campaign Name: campaign.campaign_name
    row: 4
    col: 12
    width: 12
    height: 8
  - name: Average cost per conversion by ad network over time (ad Group)
    label: Average Cost per Conversion by Ad Network over time (ad_group)
    model: google_adwords
    explore: ad_group_stats
    type: looker_line
    fields:
    - ad_group_stats.ad_network_type
    - ad_group_stats.average_cost_per_conversion
    - ad_group_stats._data_date
    - ad_group_stats.ad_network_type
    pivots:
    - ad_group_stats.ad_network_type
    sorts:
    - ad_group_stats._data_date desc
    - ad_group_stats.ad_network_type
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
      - id: ad_group_stats.total_impressions
        name: ad_group Stats Total Impressions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 730
      - id: ad_group_stats.total_interactions
        name: ad_group Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 732
      - id: ad_group_stats.total_conversions
        name: ad_group Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 734
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 718
    discontinuous_nulls: false
    focus_on_hover: false
    listen:
      Campaign Name: campaign.campaign_name
    row: 12
    col: 0
    width: 12
    height: 8
  - name: Ad Group cost by ad network over time (ad Group)
    label: ad_group Performance by Device
    model: google_adwords
    explore: ad_group_stats
    type: looker_area
    fields:
    - ad_group_stats._data_date
    - ad_group_stats.total_cost_usd
    - ad_group_stats.ad_network_type
    - ad_group_stats.ad_network_type
    pivots:
    - ad_group_stats.ad_network_type
    sorts:
    - ad_group_stats._data_date desc
    - ad_group_stats.ad_network_type
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 4
    col: 0
    width: 12
    height: 8
  - name: Hourly average cost per conversion (ad Group)
    label: Hourly Average Cost per Conversion (ad_group)
    model: google_adwords
    explore: hourly_ad_group_stats
    type: looker_column
    fields:
    - hourly_ad_group_stats.hour_of_day
    - hourly_ad_group_stats.total_impressions
    - hourly_ad_group_stats.total_interactions
    - hourly_ad_group_stats.total_conversions
    - hourly_ad_group_stats.total_cost_usd
    - hourly_ad_group_stats.average_interaction_rate
    - hourly_ad_group_stats.average_conversion_rate
    - hourly_ad_group_stats.average_cost_per_click
    - hourly_ad_group_stats.average_cost_per_conversion
    sorts:
    - hourly_ad_group_stats.hour_of_day
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
    - hourly_ad_group_stats.total_impressions
    - hourly_ad_group_stats.total_interactions
    - hourly_ad_group_stats.total_conversions
    - hourly_ad_group_stats.total_cost_usd
    - hourly_ad_group_stats.average_interaction_rate
    - hourly_ad_group_stats.average_conversion_rate
    - hourly_ad_group_stats.average_cost_per_click
    listen:
      Campaign Name: campaign.campaign_name
    row: 20
    col: 0
    width: 12
    height: 7
  - name: Funnel by ad network (ad Group)
    label: Funnel by Ad Network (ad_group)
    model: google_adwords
    explore: ad_group_stats
    type: looker_column
    fields:
    - ad_group_stats.ad_network_type
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    sorts:
    - ad_group_stats.total_impressions desc
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
      - id: ad_group_stats.total_impressions
        name: ad_group Stats Total Impressions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 646
      - id: ad_group_stats.total_interactions
        name: ad_group Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 648
      - id: ad_group_stats.total_conversions
        name: ad_group Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 650
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 634
    listen:
      Campaign Name: campaign.campaign_name
    row: 12
    col: 12
    width: 12
    height: 8
  - name: Ad Group details
    label: All ad_groups Full Details
    model: google_adwords
    explore: ad_group_stats
    type: table
    fields:
    - ad_group.ad_group_name
    - ad_group_stats.total_cost_usd
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    - ad_group_stats.average_interaction_rate
    - ad_group_stats.average_conversion_rate
    - ad_group_stats.average_cost_per_click
    - ad_group_stats.average_cost_per_conversion
    sorts:
    - ad_group_stats.total_cost_usd desc
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 27
    col: 0
    width: 24
    height: 8
  - name: Day of week average cost per conversion (ad Group)
    label: Day of Week Average Cost per Conversion (ad_group)
    model: google_adwords
    explore: ad_group_stats
    type: looker_column
    fields:
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    - ad_group_stats.total_cost_usd
    - ad_group_stats.average_interaction_rate
    - ad_group_stats.average_conversion_rate
    - ad_group_stats.average_cost_per_click
    - ad_group_stats.average_cost_per_conversion
    - ad_group_stats.day_of_week
    sorts:
    - ad_group_stats.total_impressions desc
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
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    - ad_group_stats.total_cost_usd
    - ad_group_stats.average_interaction_rate
    - ad_group_stats.average_conversion_rate
    - ad_group_stats.average_cost_per_click
    listen:
      Campaign Name: campaign.campaign_name
    row: 20
    col: 12
    width: 12
    height: 7
  filters:
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    model: google_adwords
    explore: campaign
    field: campaign.campaign_name
    listens_to_filters: []
