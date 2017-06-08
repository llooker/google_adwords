- dashboard: Ad Performance
  layout: newspaper
  elements:
  - name: Total cost
    label: Total Cost
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.total_cost_usd
    sorts:
    - ad_stats.total_cost_usd desc
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
      Ad Group Name: ad_group.ad_group_name
    row: 0
    col: 6
    width: 6
    height: 2
  - name: Total ads
    label: Total ads
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad.count
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
      Ad Group Name: ad_group.ad_group_name
    row: 0
    col: 0
    width: 6
    height: 2
  - name: Average cost per conversion
    label: Average Cost per Conversion
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.average_cost_per_conversion
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
      Ad Group Name: ad_group.ad_group_name
    row: 0
    col: 18
    width: 6
    height: 2
  - name: Total conversions
    label: Total Conversions
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.total_conversions
    sorts:
    - ad_stats.total_conversions desc
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
      Ad Group Name: ad_group.ad_group_name
    row: 0
    col: 12
    width: 6
    height: 2
  - name: Total impressions
    label: Total Impressions
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.total_impressions
    sorts:
    - ad_stats.total_impressions desc
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
      Ad Group Name: ad_group.ad_group_name
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Total clicks
    label: Total Clicks
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.total_clicks
    sorts:
    - ad_stats.total_clicks desc
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
      Ad Group Name: ad_group.ad_group_name
    row: 2
    col: 6
    width: 6
    height: 2
  - name: Average conversion rate
    label: Average Conversion Rate
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.average_conversion_rate
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
      Ad Group Name: ad_group.ad_group_name
    row: 2
    col: 18
    width: 6
    height: 2
  - name: Ad cost by ad network over time (ad)
    label: ad Performance by Device
    model: google_adwords
    explore: ad_stats
    type: looker_area
    fields:
    - ad_stats._data_date
    - ad_stats.total_cost_usd
    - ad_stats.ad_network_type
    - ad_stats.ad_network_type
    - ad_stats.ad_network_type
    pivots:
    - ad_stats.ad_network_type
    sorts:
    - ad_stats._data_date desc
    - ad_stats.ad_network_type
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
      Ad Group Name: ad_group.ad_group_name
    row: 4
    col: 0
    width: 12
    height: 8
  - name: Average interaction rate
    label: Average Interaction Rate
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.average_interaction_rate
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
      Ad Group Name: ad_group.ad_group_name
    row: 2
    col: 12
    width: 6
    height: 2
  - name: Average cost per conversion over time (ad)
    label: Average Cost per Conversion over time (ad)
    model: google_adwords
    explore: ad_stats
    type: looker_line
    fields:
    - ad_stats.average_cost_per_conversion
    - ad_stats._data_date
    - ad_stats.total_cost_usd
    sorts:
    - ad_stats._data_date
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
      Content - ad_stats.total_cost_usd: column
      Search - ad_stats.total_cost_usd: column
      Search Partners - ad_stats.total_cost_usd: column
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
      - id: ad_stats.average_cost_per_conversion
        name: ad Stats Average Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 453
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 441
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
      - id: ad_stats.total_cost_usd
        name: ad Stats Total Cost
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 471
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 459
    discontinuous_nulls: false
    focus_on_hover: false
    hidden_fields: []
    hidden_series:
    - ad_stats.total_cost_usd
    listen:
      Ad Group Name: ad_group.ad_group_name
    row: 4
    col: 12
    width: 12
    height: 8
  - name: Average cost per conversion by ad network over time (ad)
    label: Average Cost per Conversion by Ad Network over time (ad)
    model: google_adwords
    explore: ad_stats
    type: looker_line
    fields:
    - ad_stats.ad_network_type
    - ad_stats.average_cost_per_conversion
    - ad_stats._data_date
    - ad_stats.ad_network_type
    - ad_stats.ad_network_type
    pivots:
    - ad_stats.ad_network_type
    sorts:
    - ad_stats._data_date desc
    - ad_stats.ad_network_type
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
      - id: ad_stats.total_impressions
        name: ad Stats Total Impressions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 562
      - id: ad_stats.total_interactions
        name: ad Stats Total Interactions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 566
      - id: ad_stats.total_conversions
        name: ad Stats Total Conversions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 570
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 550
    discontinuous_nulls: false
    focus_on_hover: false
    listen:
      Ad Group Name: ad_group.ad_group_name
    row: 12
    col: 0
    width: 12
    height: 8
  - name: Funnel by ad network (ad)
    label: Funnel by Ad Network (ad)
    model: google_adwords
    explore: ad_stats
    type: looker_column
    fields:
    - ad_stats.ad_network_type
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    sorts:
    - ad_stats.total_impressions desc
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
      - id: ad_stats.total_impressions
        name: ad Stats Total Impressions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 704
      - id: ad_stats.total_interactions
        name: ad Stats Total Interactions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 708
      - id: ad_stats.total_conversions
        name: ad Stats Total Conversions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 712
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 692
    listen:
      Ad Group Name: ad_group.ad_group_name
    row: 12
    col: 12
    width: 12
    height: 8
  - name: Day of week average cost per conversion (ad)
    label: Day of Week Average Cost per Conversion (ad)
    model: google_adwords
    explore: ad_stats
    type: looker_column
    fields:
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    - ad_stats.total_cost_usd
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
    - ad_stats.average_cost_per_conversion
    - ad_stats.day_of_week
    sorts:
    - ad_stats.total_impressions desc
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
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    - ad_stats.total_cost_usd
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
    listen:
      Ad Group Name: ad_group.ad_group_name
    row: 20
    col: 12
    width: 12
    height: 7
  - name: Top 10 Geo Performance (geo)
    label: Top 10 Geo Performance (geo)
    model: google_adwords
    explore: geo_stats
    type: looker_column
    fields:
    - geo_stats.most_specific_criteria_id
    - geo_stats.total_impressions
    - geo_stats.total_interactions
    - geo_stats.total_conversions
    - geo_stats.total_cost_usd
    - geo_stats.average_interaction_rate
    - geo_stats.average_conversion_rate
    - geo_stats.average_cost_per_click
    - geo_stats.average_cost_per_conversion
    sorts:
    - geo_stats.total_cost_usd desc
    limit: 10
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types:
      geo_stats.average_cost_per_conversion: line
    hidden_fields:
    - geo_stats.total_impressions
    - geo_stats.total_interactions
    - geo_stats.total_conversions
    - geo_stats.average_interaction_rate
    - geo_stats.average_conversion_rate
    - geo_stats.average_cost_per_click
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
      - id: geo_stats.average_cost_per_conversion
        name: Geo Stats Average Cost per Conversion
        __FILE: google_adwords/ad_performance_overview.dashboard.lookml
        __LINE_NUM: 1090
      __FILE: google_adwords/ad_performance_overview.dashboard.lookml
      __LINE_NUM: 1078
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
      - id: geo_stats.total_cost_usd
        name: Geo Stats Total Cost
        __FILE: google_adwords/ad_performance_overview.dashboard.lookml
        __LINE_NUM: 1104
      __FILE: google_adwords/ad_performance_overview.dashboard.lookml
      __LINE_NUM: 1092
    listen: {}
    row: 27
    col: 0
    width: 12
    height: 7
  - name: Top 10 Creative Performance (ad)
    label: Top 10 Creative Performance (ad)
    model: google_adwords
    explore: ad_stats
    type: looker_column
    fields:
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    - ad_stats.total_cost_usd
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
    - ad_stats.average_cost_per_conversion
    - ad.creative
    sorts:
    - ad_stats.total_cost_usd desc
    limit: 10
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types:
      ad_stats.average_cost_per_conversion: line
    hidden_fields:
    - ad_stats.total_conversions
    - ad_stats.total_interactions
    - ad_stats.total_impressions
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
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
      - id: ad_stats.average_cost_per_conversion
        name: Average Cost per Conversion
        __FILE: google_adwords/ad_performance_overview.dashboard.lookml
        __LINE_NUM: 995
      __FILE: google_adwords/ad_performance_overview.dashboard.lookml
      __LINE_NUM: 983
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
      - id: ad_stats.total_cost_usd
        name: Total Cost
        __FILE: google_adwords/ad_performance_overview.dashboard.lookml
        __LINE_NUM: 1009
      __FILE: google_adwords/ad_performance_overview.dashboard.lookml
      __LINE_NUM: 997
    x_axis_datetime_label: ''
    y_axis_reversed: false
    listen: {}
    row: 20
    col: 0
    width: 12
    height: 7
  - name: Top 10 Keyword Performance (keyword)
    label: Top 10 Keyword Performance (keyword)
    model: google_adwords
    explore: keyword_stats
    type: looker_column
    fields:
    - keyword_stats.total_impressions
    - keyword_stats.total_interactions
    - keyword_stats.total_conversions
    - keyword_stats.total_cost_usd
    - keyword_stats.average_interaction_rate
    - keyword_stats.average_conversion_rate
    - keyword_stats.average_cost_per_click
    - keyword_stats.average_cost_per_conversion
    - keyword.criteria
    sorts:
    - keyword_stats.total_cost_usd desc
    limit: 10
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
    hidden_fields:
    - keyword_stats.total_impressions
    - keyword_stats.total_interactions
    - keyword_stats.total_conversions
    - keyword_stats.average_interaction_rate
    - keyword_stats.average_conversion_rate
    - keyword_stats.average_cost_per_click
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
      - id: keyword_stats.average_cost_per_conversion
        name: Keyword Stats Average Cost per Conversion
        __FILE: google_adwords/ad_performance_overview.dashboard.lookml
        __LINE_NUM: 900
      __FILE: google_adwords/ad_performance_overview.dashboard.lookml
      __LINE_NUM: 888
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
      - id: keyword_stats.total_cost_usd
        name: Keyword Stats Total Cost
        __FILE: google_adwords/ad_performance_overview.dashboard.lookml
        __LINE_NUM: 914
      __FILE: google_adwords/ad_performance_overview.dashboard.lookml
      __LINE_NUM: 902
    series_types:
      keyword_stats.average_cost_per_conversion: line
    listen: {}
    row: 27
    col: 12
    width: 12
    height: 7
  - name: Ad details
    label: All ads Full Details
    model: google_adwords
    explore: ad_stats
    type: table
    fields:
    - ad_stats.total_cost_usd
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
    - ad_stats.average_cost_per_conversion
    - ad.creative_id
    sorts:
    - ad_stats.total_cost_usd desc
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
      Ad Group Name: ad_group.ad_group_name
    row: 34
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
