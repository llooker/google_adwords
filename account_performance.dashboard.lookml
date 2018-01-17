- dashboard: account_performance
  title: Account Performance
  layout: newspaper
  elements:
  - title: Cost by ad network over time
    name: Cost by ad network over time
    model: google_adwords
    explore: master_stats
    type: looker_area
    fields:
    - master_stats.ad_network_type
    - master_stats._data_week
    - master_stats.total_cost_usd
    pivots:
    - master_stats.ad_network_type
    sorts:
    - master_stats.ad_network_type
    - master_stats._data_week desc
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
      Date: master_stats._data_date
    row: 19
    col: 0
    width: 12
    height: 8
  - title: Cost by device over time
    name: Cost by device over time
    model: google_adwords
    explore: master_stats
    type: looker_area
    fields:
    - master_stats.device_type
    - master_stats.total_cost_usd
    - master_stats._data_week
    pivots:
    - master_stats.device_type
    sorts:
    - master_stats.device_type
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
      Date: master_stats._data_date
    row: 27
    col: 0
    width: 12
    height: 7
  - title: Average cost per conversion over time
    name: Average cost per conversion over time
    model: google_adwords
    explore: master_stats
    type: looker_line
    fields:
    - master_stats.average_cost_per_conversion
    - master_stats._data_week
    sorts:
    - master_stats._data_week desc
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
      - id: master_stats.total_impressions
        name: Campaign Stats Total Impressions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 194
      - id: master_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 198
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 202
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 182
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
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 212
    listen:
      Date: master_stats._data_date
    row: 10
    col: 0
    width: 24
    height: 7
  - title: Funnel by ad network
    name: Funnel by ad network
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - master_stats.ad_network_type
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    sorts:
    - master_stats.total_impressions desc
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
      - id: master_stats.total_impressions
        name: Campaign Stats Total Impressions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 294
      - id: master_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 298
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 302
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 282
    listen:
      Date: master_stats._data_date
    row: 19
    col: 12
    width: 12
    height: 8
  - title: Funnel by device
    name: Funnel by device
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    - master_stats.device_type
    sorts:
    - master_stats.total_impressions desc
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
      - id: master_stats.total_impressions
        name: Campaign Stats Total Impressions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 381
      - id: master_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 385
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 389
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 369
    listen:
      Date: master_stats._data_date
    row: 27
    col: 12
    width: 12
    height: 7
  - title: Ad spend qtd
    name: Ad spend qtd
    model: google_adwords
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats.total_cost_usd
    - account_quarter_stats._data_quarter
    - last_account_quarter_stats.total_cost_usd
    fill_fields:
    - account_quarter_stats._data_quarter
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
    hidden_fields:
    - last_account_quarter_stats.total_cost_usd
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
  - title: Cost per conversion qtd
    name: Cost per conversion qtd
    model: google_adwords
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_cost_per_conversion
    - last_account_quarter_stats.average_cost_per_conversion
    fill_fields:
    - account_quarter_stats._data_quarter
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
    hidden_fields:
    - last_account_quarter_stats.average_cost_per_conversion
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
  - title: Conversion rate qtd
    name: Conversion rate qtd
    model: google_adwords
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_conversion_rate
    - last_account_quarter_stats.average_conversion_rate
    fill_fields:
    - account_quarter_stats._data_quarter
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
    hidden_fields:
    - last_account_quarter_stats.average_conversion_rate
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
  - title: Interaction rate qtd
    name: Interaction rate qtd
    model: google_adwords
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_interaction_rate
    - last_account_quarter_stats.average_interaction_rate
    fill_fields:
    - account_quarter_stats._data_quarter
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${account_quarter_stats.average_interaction_rate} - ${last_account_quarter_stats.average_interaction_rate}\
        \ )/${last_account_quarter_stats.average_interaction_rate}\n"
      value_format:
      value_format_name: percent_0
    hidden_fields:
    - last_account_quarter_stats.average_interaction_rate
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
  - title: Cost per interaction qtd
    name: Cost per interaction qtd
    model: google_adwords
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.average_cost_per_interaction
    - last_account_quarter_stats.average_cost_per_interaction
    fill_fields:
    - account_quarter_stats._data_quarter
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
    hidden_fields:
    - last_account_quarter_stats.average_cost_per_interaction
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
    row: 17
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
  - title: Hourly Average Cost per Conversion
    name: Hourly Average Cost per Conversion
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - master_stats.hour_of_day
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.average_cost_per_conversion
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
    sorts:
    - master_stats.hour_of_day
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
      master_stats.average_cost_per_conversion: line
    hidden_fields:
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_cost
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
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
      - id: master_stats.total_conversions
        name: Total Conversions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 799
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 787
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
      - id: master_stats.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 817
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 805
    hidden_series:
    - master_stats.total_cost_usd
    listen:
      Date: master_stats._data_date
    row: 34
    col: 12
    width: 12
    height: 7
  - title: Day of Week Average Cost per Conversion
    name: Day of Week Average Cost per Conversion
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - master_stats._data_day_of_week
    - master_stats.average_cost_per_conversion
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    fill_fields:
    - master_stats._data_day_of_week
    sorts:
    - master_stats._data_day_of_week
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
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 885
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 873
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
      - id: master_stats.total_cost_usd
        name: Campaign Stats Total Cost USD
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 903
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 891
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
      - id: master_stats.average_cost_per_conversion
        name: Campaign Stats Cost per Conversion
        __FILE: google_adwords/account_performance.dashboard.lookml
        __LINE_NUM: 921
      __FILE: google_adwords/account_performance.dashboard.lookml
      __LINE_NUM: 909
    series_types:
      master_stats.average_cost_per_conversion: line
    hidden_series:
    - master_stats.total_cost_usd
    listen:
      Date: master_stats._data_date
    row: 34
    col: 0
    width: 12
    height: 7
  - title: Conversions qtd
    name: Conversions qtd
    model: google_adwords
    explore: account_quarter_stats
    type: single_value
    fields:
    - account_quarter_stats._data_quarter
    - account_quarter_stats.total_conversions
    - last_account_quarter_stats.total_conversions
    fill_fields:
    - account_quarter_stats._data_quarter
    sorts:
    - account_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${account_quarter_stats.total_conversions} - ${last_account_quarter_stats.total_conversions}\n"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    hidden_fields:
    - last_account_quarter_stats.total_conversions
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
  - title: Campaign details
    name: Campaign details
    model: google_adwords
    explore: master_stats
    type: table
    fields:
    - campaign.campaign_name
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
    - master_stats.average_cost_per_conversion
    sorts:
    - master_stats.total_cost_usd desc
    limit: 10
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
    hidden_fields: []
    listen:
      Date: master_stats._data_date
    row: 43
    col: 0
    width: 24
    height: 6
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 2 quarters
    model: google_adwords
    explore: master_stats
    field: master_stats._data_date
    listens_to_filters: []
    allow_multiple_values: true
    required: false
