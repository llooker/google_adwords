- dashboard: Campaign Performance
  layout: newspaper
  elements:
  - name: Ad spend qtd (ad group)
    label: Ad Spend QTD
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats.total_cost_usd
    - ad_group_stats._data_quarter
    fill_fields:
    - ad_group_stats._data_quarter
    sorts:
    - ad_group_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${ad_group_stats.total_cost_usd} - offset(${ad_group_stats.total_cost_usd},\
        \ 1)\n"
      value_format:
      value_format_name: usd_0
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
    listen:
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 0
    col: 0
    width: 12
    height: 4
  - name: Cost per conversion qtd (ad group)
    label: Cost per Conversion QTD
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats._data_quarter
    - ad_group_stats.average_cost_per_conversion
    fill_fields:
    - ad_group_stats._data_quarter
    sorts:
    - ad_group_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_group_stats.average_cost_per_conversion} - offset(${ad_group_stats.average_cost_per_conversion},\
        \ 1) )/offset(${ad_group_stats.average_cost_per_conversion}, 1)\n"
      value_format:
      value_format_name: percent_0
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
    listen:
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 4
    col: 0
    width: 6
    height: 4
  - name: Conversions qtd (ad group)
    label: Conversions QTD
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats._data_quarter
    - ad_group_stats.total_conversions
    fill_fields:
    - ad_group_stats._data_quarter
    sorts:
    - ad_group_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${ad_group_stats.total_conversions} - offset(${ad_group_stats.total_conversions},\
        \ 1)\n"
      value_format:
      value_format_name:
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
    listen:
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 0
    col: 12
    width: 12
    height: 4
  - name: Conversion rate qtd (ad group)
    label: Conversion Rate QTD
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats._data_quarter
    - ad_group_stats.average_conversion_rate
    fill_fields:
    - ad_group_stats._data_quarter
    sorts:
    - ad_group_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_group_stats.average_conversion_rate} - offset(${ad_group_stats.average_conversion_rate},\
        \ 1) )/offset(${ad_group_stats.average_conversion_rate}, 1)\n"
      value_format:
      value_format_name: percent_0
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
    listen:
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 4
    col: 6
    width: 6
    height: 4
  - name: Cost by ad network over time (ad group)
    label: Cost by ad network
    model: google_adwords
    explore: ad_group_stats
    type: looker_area
    fields:
    - ad_group_stats.ad_network_type
    - ad_group_stats._data_week
    - ad_group_stats.total_cost_usd
    pivots:
    - ad_group_stats.ad_network_type
    sorts:
    - ad_group_stats.ad_network_type
    - ad_group_stats._data_week desc
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
    colors:
    - "#858E93"
    - "#416E9A"
    - "#BED1E2"
    - "#C26B42"
    - "#1BD4BC"
    series_colors: {}
    listen:
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 15
    col: 0
    width: 12
    height: 8
  - name: Average cost per conversion over time (ad group)
    label: Average Cost per Conversion
    model: google_adwords
    explore: ad_group_stats
    type: looker_line
    fields:
    - ad_group_stats.average_cost_per_conversion
    - ad_group_stats._data_week
    sorts:
    - ad_group_stats._data_week desc
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
      - id: ad_group_stats.total_impressions
        name: Ad Group Stats Total Impressions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 190
      - id: ad_group_stats.total_interactions
        name: Ad Group Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 194
      - id: ad_group_stats.total_conversions
        name: Ad Group Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 198
      __FILE: google_adwords/campaign_performance.dashboard.lookml
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
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 208
    listen:
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 8
    col: 0
    width: 24
    height: 7
  - name: Interaction rate qtd (ad group)
    label: Interaction Rate QTD
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats._data_quarter
    - ad_group_stats.average_interaction_rate
    fill_fields:
    - ad_group_stats._data_quarter
    sorts:
    - ad_group_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_group_stats.average_interaction_rate} - offset(${ad_group_stats.average_interaction_rate},\
        \ 1) )/offset(${ad_group_stats.average_interaction_rate}, 1)\n"
      value_format:
      value_format_name: percent_0
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
    listen:
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 4
    col: 18
    width: 6
    height: 4
  - name: Cost per interaction qtd (ad group)
    label: Cost per Interaction QTD
    model: google_adwords
    explore: ad_group_stats
    type: single_value
    fields:
    - ad_group_stats._data_quarter
    - ad_group_stats.average_cost_per_interaction
    fill_fields:
    - ad_group_stats._data_quarter
    sorts:
    - ad_group_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_group_stats.average_cost_per_interaction} - offset(${ad_group_stats.average_cost_per_interaction},\
        \ 1) )/offset(${ad_group_stats.average_cost_per_interaction}, 1)\n"
      value_format:
      value_format_name: percent_0
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
    listen:
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 4
    col: 12
    width: 6
    height: 4
  - name: Funnel by ad network (ad group)
    label: Funnel by Ad Network
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
        name: Ad Group Stats Total Impressions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 287
      - id: ad_group_stats.total_interactions
        name: Ad Group Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 291
      - id: ad_group_stats.total_conversions
        name: Ad Group Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 295
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 275
    listen:
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 15
    col: 12
    width: 12
    height: 8
  - name: Cost by device over time (ad group)
    label: Cost by Device
    model: google_adwords
    explore: ad_group_stats
    type: looker_area
    fields:
    - ad_group_stats.device
    - ad_group_stats.total_cost_usd
    - ad_group_stats._data_week
    pivots:
    - ad_group_stats.device
    sorts:
    - ad_group_stats.device
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
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 23
    col: 0
    width: 12
    height: 7
  - name: Funnel by device (ad group)
    label: Funnel by Device
    model: google_adwords
    explore: ad_group_stats
    type: looker_column
    fields:
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    - ad_group_stats.device
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
        name: Ad Group Stats Total Impressions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 375
      - id: ad_group_stats.total_interactions
        name: Ad Group Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 379
      - id: ad_group_stats.total_conversions
        name: Ad Group Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 383
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 363
    listen:
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 23
    col: 12
    width: 12
    height: 7
  - name: Hourly average cost per conversion (ad group)
    label: Hourly Average Cost per Conversion
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
    - hourly_ad_group_stats.total_cost
    - hourly_ad_group_stats.average_interaction_rate
    - hourly_ad_group_stats.average_conversion_rate
    - hourly_ad_group_stats.average_cost_per_click
    listen:
      Date: hourly_ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 30
    col: 12
    width: 12
    height: 7
  - name: Day of week average cost per conversion (ad group)
    label: Day of Week Average Cost per Conversion
    model: google_adwords
    explore: ad_group_stats
    type: looker_column
    fields:
    - ad_group_stats._data_day_of_week
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    - ad_group_stats.total_cost_usd
    - ad_group_stats.average_interaction_rate
    - ad_group_stats.average_conversion_rate
    - ad_group_stats.average_cost_per_click
    - ad_group_stats.average_cost_per_conversion
    sorts:
    - ad_group_stats._data_day_of_week
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
    - ad_group_stats.average_interaction_rate
    - ad_group_stats.average_conversion_rate
    - ad_group_stats.average_cost_per_click
    - ad_group_stats.total_cost_usd
    listen:
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 30
    col: 0
    width: 12
    height: 7
  - name: Ad group details
    label: Ad Group Details
    model: google_adwords
    explore: ad_group_stats
    type: table
    fields:
    - ad_group.ad_group_name
    - ad_group_stats.total_impressions
    - ad_group_stats.total_interactions
    - ad_group_stats.total_conversions
    - ad_group_stats.total_cost_usd
    - ad_group_stats.average_interaction_rate
    - ad_group_stats.average_conversion_rate
    - ad_group_stats.average_cost_per_click
    - ad_group_stats.average_cost_per_conversion
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
      Date: ad_group_stats._data_date
      Campaign Name: campaign.campaign_name
      Ad Group Name: ad_group.ad_group_name
    row: 45
    col: 0
    width: 24
    height: 8
  - name: Campaign Budget Utilization
    label: Campaign Budget Utilization
    model: google_adwords
    explore: campaign_budget_stats
    type: looker_column
    fields:
    - campaign_budget_stats.percent_used_budget_tier
    - campaign_budget_stats.total_cost_usd
    - campaign_budget_stats._data_week
    pivots:
    - campaign_budget_stats.percent_used_budget_tier
    fill_fields:
    - campaign_budget_stats._data_week
    sorts:
    - campaign_budget_stats.percent_used_budget_tier
    - campaign_budget_stats._data_week desc
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    column_spacing_ratio:
    colors:
    - "#858E93"
    - "#416E9A"
    - "#BED1E2"
    - "#C26B42"
    - "#1BD4BC"
    series_colors: {}
    listen: {}
    row: 37
    col: 0
    width: 24
    height: 8
  filters:
  - name: Ad Group Name
    title: Ad Group Name
    type: field_filter
    default_value: ''
    model: google_adwords
    explore: ad_group
    field: ad_group.ad_group_name
    listens_to_filters: []
    allow_multiple_values: true
  - name: Date
    title: Date
    type: field_filter
    default_value: 6 months
    model: google_adwords
    explore: ad_group_stats
    field: ad_group_stats._data_date
    listens_to_filters: []
    allow_multiple_values: true
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    model: google_adwords
    explore: campaign
    field: campaign.campaign_name
    listens_to_filters:
    - Ad Group Name
    allow_multiple_values: true
