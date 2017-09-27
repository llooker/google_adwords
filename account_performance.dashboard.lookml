- dashboard: account_performance
  title: Account Performance
  layout: newspaper
  elements:
  - name: cost_by_ad_network_over_time_account
    title: Cost by ad network over time
    model: adwords_demo
    explore: account_basic_stats
    type: looker_area
    fields:
    - account_basic_stats.ad_network_type
    - account_basic_stats._data_week
    - account_basic_stats.total_cost_usd
    pivots:
    - account_basic_stats.ad_network_type
    sorts:
    - account_basic_stats.ad_network_type
    - account_basic_stats._data_week desc
    limit: 500
    column_limit: 50
    label: Cost by ad network over time
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
    colors:
    - "#858E93"
    - "#416E9A"
    - "#BED1E2"
    - "#C26B42"
    - "#1BD4BC"
    series_colors: {}
    listen:
      Date: account_basic_stats._data_date
    row: 19
    col: 0
    width: 12
    height: 8
  - name: cost_by_device_over_time_account
    title: Cost by device over time
    model: adwords_demo
    explore: account_basic_stats
    type: looker_area
    fields:
    - account_basic_stats.device_type
    - account_basic_stats.total_cost_usd
    - account_basic_stats._data_week
    pivots:
    - account_basic_stats.device_type
    sorts:
    - account_basic_stats.device_type
    limit: 500
    column_limit: 50
    label: Cost by device
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    colors:
    - "#858E93"
    - "#416E9A"
    - "#BED1E2"
    - "#C26B42"
    - "#1BD4BC"
    series_colors: {}
    listen:
      Date: account_basic_stats._data_date
    row: 27
    col: 0
    width: 12
    height: 7
  - name: average_cost_per_conversion_over_time_account
    title: Average cost per conversion over time
    model: adwords_demo
    explore: account_basic_stats
    type: looker_line
    fields:
    - account_basic_stats.average_cost_per_conversion
    - account_basic_stats._data_week
    sorts:
    - account_basic_stats._data_week desc
    limit: 500
    column_limit: 50
    label: Average Cost per Conversion
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
    x_axis_scale: time
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
      - id: account_basic_stats.total_impressions
        name: Campaign Stats Total Impressions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 190
      - id: account_basic_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 194
      - id: account_basic_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 198
      __FILE: adwords_demo/account_performance.dashboard.lookml
      __LINE_NUM: 178
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    trend_lines:
    - color: "#000000"
      label_position: right
      period: 7
      regression_type: linear
      series_index: 1
      show_label: false
      label_type: string
      __FILE: adwords_demo/account_performance.dashboard.lookml
      __LINE_NUM: 208
    listen:
      Date: account_basic_stats._data_date
    row: 12
    col: 0
    width: 24
    height: 7
  - name: funnel_by_ad_network_account
    title: Funnel by ad network
    model: adwords_demo
    explore: account_basic_stats
    type: looker_column
    fields:
    - account_basic_stats.ad_network_type
    - account_basic_stats.total_impressions
    - account_basic_stats.total_interactions
    - account_basic_stats.total_conversions
    sorts:
    - account_basic_stats.total_impressions desc
    limit: 500
    column_limit: 50
    label: Funnel by Ad Network
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
      - id: account_basic_stats.total_impressions
        name: Campaign Stats Total Impressions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 289
      - id: account_basic_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 293
      - id: account_basic_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 297
      __FILE: adwords_demo/account_performance.dashboard.lookml
      __LINE_NUM: 277
    listen:
      Date: account_basic_stats._data_date
    row: 19
    col: 12
    width: 12
    height: 8
  - name: funnel_by_device_account
    title: Funnel by device
    model: adwords_demo
    explore: account_basic_stats
    type: looker_column
    fields:
    - account_basic_stats.total_impressions
    - account_basic_stats.total_interactions
    - account_basic_stats.total_conversions
    - account_basic_stats.device_type
    sorts:
    - account_basic_stats.total_impressions desc
    limit: 500
    column_limit: 50
    label: Funnel by device
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
      - id: account_basic_stats.total_impressions
        name: Campaign Stats Total Impressions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 375
      - id: account_basic_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 379
      - id: account_basic_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: adwords_demo/account_performance.dashboard.lookml
        __LINE_NUM: 383
      __FILE: adwords_demo/account_performance.dashboard.lookml
      __LINE_NUM: 363
    listen:
      Date: account_basic_stats._data_date
    row: 27
    col: 12
    width: 12
    height: 7
  - name: campaign_details
    title: Campaign details
    model: adwords_demo
    explore: campaign_basic_stats
    type: table
    fields:
    - campaign.campaign_name
    - campaign_basic_stats.total_impressions
    - campaign_basic_stats.total_interactions
    - campaign_basic_stats.total_conversions
    - campaign_basic_stats.total_cost_usd
    - campaign_basic_stats.average_interaction_rate
    - campaign_basic_stats.average_conversion_rate
    - campaign_basic_stats.average_cost_per_click
    - campaign_basic_stats.average_cost_per_conversion
    sorts:
    - campaign_basic_stats.total_impressions desc
    limit: 500
    column_limit: 50
    label: Campaign Details
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
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
      Date: campaign_basic_stats._data_date
    row: 43
    col: 0
    width: 24
    height: 6
  - name: ad_spend_qtd_account
    title: Ad spend qtd
    model: adwords_demo
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats.total_cost_usd
    - account_quarter_stats._data_quarter
    - last_account_quarter_stats.total_cost_usd
    fill_fields:
    - account_quarter_stats._data_quarter
    hidden_fields: [last_account_quarter_stats.total_cost_usd]
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${account_quarter_stats.total_cost_usd} - ${last_account_quarter_stats.total_cost_usd}\n"
      value_format:
      value_format_name: usd_0
    label: Ad Spend QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    single_value_title: Spend QTD
    comparison_label: ''
    row: 2
    col: 0
    width: 12
    height: 4
  - name: cost_per_conversion_qtd_account
    title: Cost per conversion qtd
    model: adwords_demo
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_cost_per_conversion
    - last_account_quarter_stats.average_cost_per_conversion
    fill_fields:
    - account_quarter_stats._data_quarter
    hidden_fields: [last_account_quarter_stats.average_cost_per_conversion]
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${account_quarter_stats.average_cost_per_conversion} -  ${last_account_quarter_stats.average_cost_per_conversion})/${last_account_quarter_stats.average_cost_per_conversion}\n"
      value_format:
      value_format_name: percent_0
    label: Cost per Conversion QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
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
    single_value_title: Cost per Conversion QTD
    comparison_label: ''
    row: 6
    col: 0
    width: 6
    height: 4
  - name: conversion_rate_qtd_account
    title: Conversion rate qtd
    model: adwords_demo
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_conversion_rate
    - last_account_quarter_stats.average_conversion_rate
    fill_fields:
    - account_quarter_stats._data_quarter
    hidden_fields: [last_account_quarter_stats.average_conversion_rate]
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${account_quarter_stats.average_conversion_rate} - ${last_account_quarter_stats.average_conversion_rate})/${last_account_quarter_stats.average_conversion_rate}\n"
      value_format:
      value_format_name: percent_0
    label: Conversion Rate QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    single_value_title: Conversion Rate QTD
    comparison_label: ''
    row: 6
    col: 6
    width: 6
    height: 4
  - name: conversions_qtd_account
    title: Conversions qtd
    model: adwords_demo
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.total_conversions
    - last_account_quarter_stats.total_conversions
    fill_fields:
    - account_quarter_stats._data_quarter
    hidden_fields: [last_account_quarter_stats.total_conversions]
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${account_quarter_stats.total_conversions} - ${last_account_quarter_stats.total_conversions}\n"
      value_format:
      value_format_name:
    label: Conversions QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    single_value_title: Conversions QTD
    comparison_label: ''
    row: 2
    col: 12
    width: 12
    height: 4
  - name: interaction_rate_qtd_account
    title: Interaction rate qtd
    model: adwords_demo
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_interaction_rate
    - last_account_quarter_stats.average_interaction_rate
    fill_fields:
    - account_quarter_stats._data_quarter
    hidden_fields: [last_account_quarter_stats.average_interaction_rate]
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${account_quarter_stats.average_interaction_rate} - ${last_account_quarter_stats.average_interaction_rate} )/${last_account_quarter_stats.average_interaction_rate}\n"
      value_format:
      value_format_name: percent_0
    label: Interaction Rate QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    single_value_title: Interaction Rate QTD
    comparison_label: ''
    row: 6
    col: 18
    width: 6
    height: 4
  - name: cost_per_interaction_qtd_account
    title: Cost per interaction qtd
    model: adwords_demo
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_cost_per_interaction
    - last_account_quarter_stats.average_cost_per_interaction
    fill_fields:
    - account_quarter_stats._data_quarter
    hidden_fields: [last_account_quarter_stats.average_cost_per_interaction]
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${account_quarter_stats.average_cost_per_interaction} - ${last_account_quarter_stats.average_cost_per_interaction})/${last_account_quarter_stats.average_cost_per_interaction}\n"
      value_format:
      value_format_name: percent_0
    label: Cost per Interaction QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    single_value_title: Cost per Interaction QTD
    comparison_label: ''
    row: 6
    col: 12
    width: 6
    height: 4
  - name: Pulse Metrics
    type: text
    title_text: Pulse Metrics
    subtitle_text: Current Snapshot of Performance this Quarter
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Progress
    type: text
    title_text: Progress
    subtitle_text: Current Performance Trends
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: Campaign Details
    type: text
    title_text: Campaign Details
    subtitle_text: Drill to Explore Campaign Specific Trends
    row: 41
    col: 0
    width: 24
    height: 2
  - name: hourly_average_cost_per_conversion_account
    title: Hourly Average Cost per Conversion
    model: adwords_demo
    explore: hourly_account_stats
    type: looker_column
    fields:
    - hourly_account_stats.hour_of_day
    - hourly_account_stats.total_impressions
    - hourly_account_stats.total_interactions
    - hourly_account_stats.average_cost_per_conversion
    - hourly_account_stats.total_conversions
    - hourly_account_stats.total_cost_usd
    - hourly_account_stats.average_interaction_rate
    - hourly_account_stats.average_conversion_rate
    - hourly_account_stats.average_cost_per_click
    sorts:
    - hourly_account_stats.hour_of_day
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
    point_style: circle_outline
    interpolation: linear
    label: Hourly Average Cost per Conversion
    series_types:
      hourly_account_stats.average_cost_per_conversion: line
    hidden_fields:
    - hourly_account_stats.total_impressions
    - hourly_account_stats.total_interactions
    - hourly_account_stats.total_cost
    - hourly_account_stats.average_interaction_rate
    - hourly_account_stats.average_conversion_rate
    - hourly_account_stats.average_cost_per_click
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: hourly_account_stats.total_conversions
        name: Total Conversions
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: hourly_account_stats.average_cost_per_conversion
        name: Cost per Conversion
    hidden_series:
    - hourly_account_stats.total_cost_usd
    listen:
      Date: hourly_account_stats._data_date
    row: 34
    col: 12
    width: 12
    height: 7
  - name: day_of_week_average_cost_per_conversion_account
    title: Day of Week Average Cost per Conversion
    model: adwords_demo
    explore: account_basic_stats
    type: looker_column
    fields:
    - account_basic_stats._data_day_of_week
    - account_basic_stats.average_cost_per_conversion
    - account_basic_stats.total_conversions
    - account_basic_stats.total_cost_usd
    fill_fields:
    - account_basic_stats._data_day_of_week
    sorts:
    - account_basic_stats._data_day_of_week
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
    point_style: circle_outline
    interpolation: linear
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: account_basic_stats.total_conversions
        name: Campaign Stats Total Conversions
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: account_basic_stats.total_cost_usd
        name: Campaign Stats Total Cost USD
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: account_basic_stats.average_cost_per_conversion
        name: Campaign Stats Cost per Conversion
    series_types:
      account_basic_stats.average_cost_per_conversion: line
    hidden_series:
    - account_basic_stats.total_cost_usd
    listen:
      Date: account_basic_stats._data_date
    row: 34
    col: 0
    width: 12
    height: 7
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 6 months
    model: adwords_demo
    explore: account_basic_stats
    field: account_basic_stats._data_date
    listens_to_filters: []
    allow_multiple_values: true