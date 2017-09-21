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
  - name: Average cost per conversion over time (ad group)
    title: Average cost per conversion over time (ad group)
    model: adwords_demo
    explore: ad_group_basic_stats
    type: looker_line
    fields:
    - ad_group_basic_stats.average_cost_per_conversion
    - ad_group_basic_stats._data_week
    sorts:
    - ad_group_basic_stats._data_week desc
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
      - id: ad_group_basic_stats.total_impressions
        name: Ad Stats Total Impressions
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 88
      - id: ad_group_basic_stats.total_interactions
        name: Ad Stats Total Interactions
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 92
      - id: ad_group_basic_stats.total_conversions
        name: Ad Stats Total Conversions
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 96
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 76
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
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 106
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: ad_group_basic_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 2
    col: 0
    width: 24
    height: 7
  - name: Top 10 keyword performance (keyword)
    title: Top 10 keyword performance (keyword)
    model: adwords_demo
    explore: keyword_stats
    type: looker_column
    fields:
    - keyword.criteria
    - keyword_stats.average_cost_per_conversion
    - keyword_stats.total_impressions
    - keyword_stats.total_interactions
    - keyword_stats.total_conversions
    - keyword_stats.total_cost_usd
    - keyword_stats.average_interaction_rate
    - keyword_stats.average_conversion_rate
    - keyword_stats.average_cost_per_click
    sorts:
    - keyword_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 Keyword Performance (keyword)
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
        name: Cost per Conversion
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 184
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 172
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
        name: Total Cost USD
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 202
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 190
    series_types:
      keyword_stats.average_cost_per_conversion: line
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: keyword_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 9
    col: 12
    width: 12
    height: 7
  - name: Top 10 creative performance (ad)
    title: Top 10 creative performance (ad)
    model: adwords_demo
    explore: ad_basic_stats
    type: looker_column
    fields:
    - ad.creative
    - ad_basic_stats.average_cost_per_conversion
    - ad_basic_stats.total_impressions
    - ad_basic_stats.total_interactions
    - ad_basic_stats.total_conversions
    - ad_basic_stats.total_cost_usd
    - ad_basic_stats.average_interaction_rate
    - ad_basic_stats.average_conversion_rate
    - ad_basic_stats.average_cost_per_click
    sorts:
    - ad_basic_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 Creative Performance (ad group)
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
      ad_basic_stats.average_cost_per_conversion: line
    hidden_fields:
    - ad_basic_stats.total_conversions
    - ad_basic_stats.total_interactions
    - ad_basic_stats.total_impressions
    - ad_basic_stats.average_interaction_rate
    - ad_basic_stats.average_conversion_rate
    - ad_basic_stats.average_cost_per_click
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
      - id: ad_basic_stats.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 290
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 278
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
      - id: ad_basic_stats.total_cost_usd
        name: Total Cost USD
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 308
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 296
    x_axis_datetime_label: ''
    y_axis_reversed: false
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: ad_basic_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 9
    col: 0
    width: 12
    height: 7
  - name: Top 10 audience performance (audience)
    title: Top 10 audience performance (audience)
    model: adwords_demo
    explore: audience_stats
    type: looker_column
    fields:
    - audience.criteria
    - audience_stats.average_cost_per_conversion
    - audience_stats.total_cost_usd
    sorts:
    - audience_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 audience performance (audience)
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
      - id: audience_stats.average_cost_per_conversion
        name: Audience Stats Cost per Conversion
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 372
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 360
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
      - id: audience_stats.total_cost_usd
        name: Audience Stats Total Cost USD
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 386
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 374
    series_types:
      audience_stats.average_cost_per_conversion: line
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: audience_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 16
    col: 0
    width: 12
    height: 8
  - name: Bid strategy and match cost per conversion
    title: Bid strategy and match cost per conversion
    model: adwords_demo
    explore: keyword_stats
    type: looker_column
    fields:
    - keyword.bidding_strategy_type
    - keyword_stats.average_cost_per_conversion
    - keyword_stats.total_cost_usd
    - keyword.keyword_match_type
    pivots:
    - keyword.keyword_match_type
    sorts:
    - keyword.keyword_match_type desc 0
    - keyword_stats.total_cost_usd desc 0
    limit: 500
    column_limit: 50
    label: Top 10 Keyword Performance (keyword)
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
    - keyword_stats.total_cost_usd
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
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 465
      - id: EXACT - Keyword Stats Cost per Conversion
        name: EXACT - Keyword Stats Cost per Conversion
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 469
      - id: BROAD - Keyword Stats Cost per Conversion
        name: BROAD - Keyword Stats Cost per Conversion
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 471
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 453
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
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 487
      - id: EXACT - Keyword Stats Total Cost USD
        name: EXACT - Keyword Stats Total Cost USD
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 491
      - id: BROAD - Keyword Stats Total Cost USD
        name: BROAD - Keyword Stats Total Cost USD
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 493
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 475
    series_types: {}
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: keyword_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 16
    col: 12
    width: 12
    height: 8
  - name: Ad details
    title: Ad details
    model: adwords_demo
    explore: ad_basic_stats
    type: table
    fields:
    - ad_group.ad_group_name
    - ad_basic_stats.average_cost_per_conversion
    - ad_basic_stats.average_interaction_rate
    - ad_basic_stats.average_cost_per_click
    - ad_basic_stats.average_conversion_rate
    - ad_basic_stats.total_impressions
    - ad_basic_stats.total_interactions
    - ad_basic_stats.total_conversions
    - ad_basic_stats.total_cost_usd
    sorts:
    - ad_basic_stats.total_cost_usd desc
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
      Date: ad_basic_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 26
    col: 0
    width: 24
    height: 8
  - name: Keyword details (keyword)
    title: Keyword details (keyword)
    model: adwords_demo
    explore: keyword_stats
    type: table
    fields:
    - keyword.criteria
    - ad_group.ad_group_name
    - campaign.campaign_name
    - keyword_stats.average_cost_per_conversion
    - keyword_stats.average_interaction_rate
    - keyword_stats.average_conversion_rate
    - keyword_stats.average_cost_per_click
    - keyword_stats.total_impressions
    - keyword_stats.total_interactions
    - keyword_stats.total_conversions
    - keyword_stats.total_cost_usd
    sorts:
    - keyword_stats.total_cost_usd desc
    limit: 10
    column_limit: 50
    label: Top 10 Keyword Performance (keyword)
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
      - id: keyword_stats.average_cost_per_conversion
        name: Keyword Stats Average Cost per Conversion
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 630
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 618
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
      - id: keyword_stats.total_cost
        name: Keyword Stats Total Cost
        __FILE: adwords_demo/ad_group_performance.dashboard.lookml
        __LINE_NUM: 648
      __FILE: adwords_demo/ad_group_performance.dashboard.lookml
      __LINE_NUM: 636
    series_types: {}
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: keyword_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 34
    col: 0
    width: 24
    height: 6
  filters:
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    model: adwords_demo
    explore: campaign
    field: campaign.campaign_name
    listens_to_filters:
    - Ad Group Name
    allow_multiple_values: true
  - name: Ad Group Name
    title: Ad Group Name
    type: field_filter
    default_value: ''
    model: adwords_demo
    explore: ad_group
    field: ad_group.ad_group_name
    listens_to_filters: []
    allow_multiple_values: true
  - name: Date
    title: Date
    type: field_filter
    default_value: 6 months
    model: adwords_demo
    explore: ad_group_basic_stats
    field: ad_group_basic_stats._data_date
    listens_to_filters: []
    allow_multiple_values: true