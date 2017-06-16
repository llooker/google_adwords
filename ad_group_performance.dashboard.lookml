- dashboard: Ad Performance
  layout: newspaper
  elements:
  - name: Ad spend qtd (ad)
    label: Ad Spend QTD
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats.total_cost_usd
    - ad_stats._data_quarter
    fill_fields:
    - ad_stats._data_quarter
    sorts:
    - ad_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${ad_stats.total_cost_usd} - offset(${ad_stats.total_cost_usd},\
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
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 0
    col: 0
    width: 12
    height: 4
  - name: Cost per conversion qtd (ad)
    label: Cost per Conversion QTD
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats._data_quarter
    - ad_stats.average_cost_per_conversion
    fill_fields:
    - ad_stats._data_quarter
    sorts:
    - ad_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_stats.average_cost_per_conversion} - offset(${ad_stats.average_cost_per_conversion},\
        \ 1) )/offset(${ad_stats.average_cost_per_conversion}, 1)\n"
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
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 4
    col: 0
    width: 6
    height: 4
  - name: Conversions qtd (ad)
    label: Conversions QTD
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats._data_quarter
    - ad_stats.total_conversions
    fill_fields:
    - ad_stats._data_quarter
    sorts:
    - ad_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${ad_stats.total_conversions} - offset(${ad_stats.total_conversions},\
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
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 0
    col: 12
    width: 12
    height: 4
  - name: Cost per interaction qtd (ad)
    label: Cost per Interaction QTD
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats._data_quarter
    - ad_stats.average_cost_per_interaction
    fill_fields:
    - ad_stats._data_quarter
    sorts:
    - ad_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_stats.average_cost_per_interaction} - offset(${ad_stats.average_cost_per_interaction},\
        \ 1) )/offset(${ad_stats.average_cost_per_interaction}, 1)\n"
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
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 4
    col: 12
    width: 6
    height: 4
  - name: Conversion rate qtd (ad)
    label: Conversion Rate QTD
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats._data_quarter
    - ad_stats.average_conversion_rate
    fill_fields:
    - ad_stats._data_quarter
    sorts:
    - ad_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_stats.average_conversion_rate} - offset(${ad_stats.average_conversion_rate},\
        \ 1) )/offset(${ad_stats.average_conversion_rate}, 1)\n"
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
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 4
    col: 6
    width: 6
    height: 4
  - name: Interaction rate qtd (ad)
    label: Interaction Rate QTD
    model: google_adwords
    explore: ad_stats
    type: single_value
    fields:
    - ad_stats._data_quarter
    - ad_stats.average_interaction_rate
    fill_fields:
    - ad_stats._data_quarter
    sorts:
    - ad_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${ad_stats.average_interaction_rate} - offset(${ad_stats.average_interaction_rate},\
        \ 1) )/offset(${ad_stats.average_interaction_rate}, 1)\n"
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
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 4
    col: 18
    width: 6
    height: 4
  - name: Average cost per conversion over time (ad)
    label: Average Cost per Conversion
    model: google_adwords
    explore: ad_stats
    type: looker_line
    fields:
    - ad_stats.average_cost_per_conversion
    - ad_stats._data_week
    sorts:
    - ad_stats._data_week desc
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
      - id: ad_stats.total_impressions
        name: Ad Stats Total Impressions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 375
      - id: ad_stats.total_interactions
        name: Ad Stats Total Interactions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 379
      - id: ad_stats.total_conversions
        name: Ad Stats Total Conversions
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 383
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 363
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
      __LINE_NUM: 393
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 8
    col: 0
    width: 24
    height: 7
  - name: Top 10 keyword performance (keyword)
    label: Top 10 Keyword Performance (keyword)
    model: google_adwords
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
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1011
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 999
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
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1029
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 1017
    series_types:
      keyword_stats.average_cost_per_conversion: line
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: keyword_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 15
    col: 12
    width: 12
    height: 7
  - name: Top 10 creative performance (ad)
    label: Top 10 Creative Performance (ad)
    model: google_adwords
    explore: ad_stats
    type: looker_column
    fields:
    - ad.creative
    - ad_stats.average_cost_per_conversion
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    - ad_stats.total_cost_usd
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
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
      - id: ad_stats.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1117
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 1105
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
        name: Total Cost USD
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1135
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 1123
    x_axis_datetime_label: ''
    y_axis_reversed: false
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 15
    col: 0
    width: 12
    height: 7
  - name: Top 10 audience performance (audience)
    label: Top 10 audience performance (audience)
    model: google_adwords
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
    series_types:
      audience_stats.average_cost_per_conversion: line
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: audience_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 22
    col: 0
    width: 12
    height: 8
  - name: Bid Strategy and Match Cost per Conversion
    label: Top 10 Keyword Performance (keyword)
    model: google_adwords
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
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1011
      - id: EXACT - Keyword Stats Cost per Conversion
        name: EXACT - Keyword Stats Cost per Conversion
      - id: BROAD - Keyword Stats Cost per Conversion
        name: BROAD - Keyword Stats Cost per Conversion
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 999
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
        __LINE_NUM: 1029
      - id: EXACT - Keyword Stats Total Cost USD
        name: EXACT - Keyword Stats Total Cost USD
      - id: BROAD - Keyword Stats Total Cost USD
        name: BROAD - Keyword Stats Total Cost USD
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 1017
    series_types: {}
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: keyword_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 22
    col: 12
    width: 12
    height: 8
  - name: Ad details
    label: Ad Details
    model: google_adwords
    explore: ad_stats
    type: table
    fields:
    - ad_group.ad_group_name
    - ad_stats.total_impressions
    - ad_stats.total_interactions
    - ad_stats.total_conversions
    - ad_stats.total_cost_usd
    - ad_stats.average_interaction_rate
    - ad_stats.average_conversion_rate
    - ad_stats.average_cost_per_click
    - ad_stats.average_cost_per_conversion
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
      Date: ad_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 30
    col: 0
    width: 24
    height: 8
  - name: Keyword details (keyword)
    label: Top 10 Keyword Performance (keyword)
    model: google_adwords
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
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1213
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 1201
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
        __FILE: google_adwords/ad_group_performance.dashboard.lookml
        __LINE_NUM: 1231
      __FILE: google_adwords/ad_group_performance.dashboard.lookml
      __LINE_NUM: 1219
    series_types: {}
    listen:
      Ad Group Name: ad_group.ad_group_name
      Date: keyword_stats._data_date
      Campaign Name: campaign.campaign_name
    row: 38
    col: 0
    width: 24
    height: 6
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
    explore: ad_stats
    field: ad_stats._data_date
    listens_to_filters: []
    allow_multiple_values: true
