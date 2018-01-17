- dashboard: ad_performance
  title: Ad Performance
  layout: newspaper
  elements:
  - name: Progress
    type: text
    title_text: Progress
    subtitle_text: Current Performance Trends
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Details
    type: text
    title_text: Details
    subtitle_text: Drill to Explore Specific Trends
    row: 24
    col: 0
    width: 24
    height: 2
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
        name: Ad Stats Total Impressions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 90
      - id: master_stats.total_interactions
        name: Ad Stats Total Interactions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 94
      - id: master_stats.total_conversions
        name: Ad Stats Total Conversions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 98
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 78
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
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 108
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 2
    col: 0
    width: 24
    height: 7
  - title: Top 10 keyword performance
    name: Top 10 keyword performance
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - keyword.criteria
    - master_stats.average_cost_per_conversion
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
    sorts:
    - master_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 Keyword Performance
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
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
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
      - id: master_stats.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 187
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 175
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
      - id: master_stats.total_cost_usd
        name: Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 205
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 193
    series_types:
      master_stats.average_cost_per_conversion: line
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 9
    col: 12
    width: 12
    height: 7
  - title: Top 10 creative performance
    name: Top 10 creative performance
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - ad.creative
    - master_stats.average_cost_per_conversion
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
    sorts:
    - master_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 Creative Performance
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
      master_stats.average_cost_per_conversion: line
    hidden_fields:
    - master_stats.total_conversions
    - master_stats.total_interactions
    - master_stats.total_impressions
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
    y_axes:
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
      - id: master_stats.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 294
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 282
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
      - id: master_stats.total_cost_usd
        name: Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 312
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 300
    x_axis_datetime_label: ''
    y_axis_reversed: false
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 9
    col: 0
    width: 12
    height: 7
  - title: Top 10 audience performance
    name: Top 10 audience performance
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - audience.criteria
    - master_stats.average_cost_per_conversion
    - master_stats.total_cost_usd
    sorts:
    - master_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 audience performance
    stacking: ''
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
      - id: master_stats.average_cost_per_conversion
        name: Audience Stats Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 377
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 365
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
      - id: master_stats.total_cost_usd
        name: Audience Stats Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 395
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 383
    series_types:
      master_stats.average_cost_per_conversion: line
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 16
    col: 0
    width: 12
    height: 8
  - title: Ad details
    name: Ad details
    model: google_adwords
    explore: master_stats
    type: table
    fields:
    - ad_group.ad_group_name
    - master_stats.average_cost_per_conversion
    - master_stats.average_interaction_rate
    - master_stats.average_cost_per_click
    - master_stats.average_conversion_rate
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    sorts:
    - master_stats.total_cost_usd desc
    limit: 20
    column_limit: 50
    label: Ad Details
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
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 26
    col: 0
    width: 24
    height: 4
  - title: Keyword details
    name: Keyword details
    model: google_adwords
    explore: master_stats
    type: table
    fields:
    - keyword.criteria
    - ad_group.ad_group_name
    - campaign.campaign_name
    - master_stats.average_cost_per_conversion
    - master_stats.average_interaction_rate
    - master_stats.average_conversion_rate
    - master_stats.average_cost_per_click
    - master_stats.total_impressions
    - master_stats.total_interactions
    - master_stats.total_conversions
    - master_stats.total_cost_usd
    sorts:
    - master_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 Keyword Performance
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields:
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
      - id: master_stats.average_cost_per_conversion
        name: Keyword Stats Average Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 656
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 644
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
      - id: master_stats.total_cost
        name: Keyword Stats Total Cost
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 674
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 662
    series_types: {}
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 30
    col: 0
    width: 24
    height: 6
  - title: Bid strategy and match cost per conversion
    name: Bid strategy and match cost per conversion
    model: google_adwords
    explore: master_stats
    type: looker_column
    fields:
    - keyword.bidding_strategy_type
    - master_stats.average_cost_per_conversion
    - master_stats.total_cost_usd
    - keyword.keyword_match_type
    pivots:
    - keyword.keyword_match_type
    filters:
      master_stats.average_cost_per_conversion: NOT NULL
    sorts:
    - keyword.keyword_match_type desc 0
    - master_stats.total_cost_usd desc 0
    limit: 500
    column_limit: 50
    label: Top 10 Keyword Performance
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
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: '12'
    hidden_fields:
    - master_stats.total_cost_usd
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
      - id: PHRASE - Keyword Stats Cost per Conversion
        name: PHRASE - Keyword Stats Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 479
      - id: EXACT - Keyword Stats Cost per Conversion
        name: EXACT - Keyword Stats Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 483
      - id: BROAD - Keyword Stats Cost per Conversion
        name: BROAD - Keyword Stats Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 487
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 467
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
      - id: PHRASE - Keyword Stats Total Cost USD
        name: PHRASE - Keyword Stats Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 505
      - id: EXACT - Keyword Stats Total Cost USD
        name: EXACT - Keyword Stats Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 509
      - id: BROAD - Keyword Stats Total Cost USD
        name: BROAD - Keyword Stats Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 513
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 493
    series_types: {}
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: master_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 16
    col: 12
    width: 12
    height: 8
  filters:
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
    required: false
  - name: Ad Group Name
    title: Ad Group Name
    type: field_filter
    default_value: ''
    model: google_adwords
    explore: ad_group
    field: ad_group.ad_group_name
    listens_to_filters: []
    allow_multiple_values: true
    required: false
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
