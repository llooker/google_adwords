- dashboard: campaign_performance
  title: Campaign Performance
  layout: newspaper
  elements:
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
  - name: Ad Group Details
    type: text
    title_text: Ad Group Details
    subtitle_text: Drill to Explore Campaign Specific Trends
    row: 49
    col: 0
    width: 24
    height: 2
  - title: Conversion rate qtd (campaign)
    name: Conversion rate qtd (campaign)
    model: google_adwords
    explore: campaign_quarter_stats
    type: single_value
    fields:
    - campaign_quarter_stats._data_quarter
    - campaign_quarter_stats.average_conversion_rate
    - last_campaign_quarter_stats.average_conversion_rate
    fill_fields:
    - campaign_quarter_stats._data_quarter
    sorts:
    - campaign_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${campaign_quarter_stats.average_conversion_rate} - ${last_campaign_quarter_stats.average_conversion_rate})/${last_campaign_quarter_stats.average_conversion_rate}\n"
      value_format:
      value_format_name: percent_0
    hidden_fields:
    - last_campaign_quarter_stats.average_conversion_rate
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 6
    col: 6
    width: 6
    height: 4
  - title: Conversions qtd (campaign)
    name: Conversions qtd (campaign)
    model: google_adwords
    explore: campaign_quarter_stats
    type: single_value
    fields:
    - campaign_quarter_stats._data_quarter
    - campaign_quarter_stats.total_conversions
    - last_campaign_quarter_stats.total_conversions
    fill_fields:
    - campaign_quarter_stats._data_quarter
    sorts:
    - campaign_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${campaign_quarter_stats.total_conversions} - ${last_campaign_quarter_stats.total_conversions}\n"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    hidden_fields:
    - last_campaign_quarter_stats.total_conversions
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 2
    col: 12
    width: 12
    height: 4
  - title: Ad spend qtd (campaign)
    name: Ad spend qtd (campaign)
    model: google_adwords
    explore: campaign_quarter_stats
    type: single_value
    fields:
    - campaign_quarter_stats.total_cost_usd
    - campaign_quarter_stats._data_quarter
    - last_campaign_quarter_stats.total_cost_usd
    fill_fields:
    - campaign_quarter_stats._data_quarter
    sorts:
    - campaign_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly Change
      expression: "${campaign_quarter_stats.total_cost_usd} - ${last_campaign_quarter_stats.total_cost_usd}\n"
      value_format:
      value_format_name: usd_0
    hidden_fields:
    - last_campaign_quarter_stats.total_cost_usd
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 2
    col: 0
    width: 12
    height: 4
  - title: Cost per conversion qtd (campaign)
    name: Cost per conversion qtd (campaign)
    model: google_adwords
    explore: campaign_quarter_stats
    type: single_value
    fields:
    - campaign_quarter_stats._data_quarter
    - campaign_quarter_stats.average_cost_per_conversion
    - last_campaign_quarter_stats.average_cost_per_conversion
    fill_fields:
    - campaign_quarter_stats._data_quarter
    sorts:
    - campaign_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${campaign_quarter_stats.average_cost_per_conversion} -  ${last_campaign_quarter_stats.average_cost_per_conversion})/${last_campaign_quarter_stats.average_cost_per_conversion}\n"
      value_format:
      value_format_name: percent_0
    hidden_fields:
    - last_campaign_quarter_stats.average_cost_per_conversion
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 6
    col: 0
    width: 6
    height: 4
  - title: Cost per interaction qtd (campaign)
    name: Cost per interaction qtd (campaign)
    model: google_adwords
    explore: campaign_quarter_stats
    type: single_value
    fields:
    - campaign_quarter_stats._data_quarter
    - campaign_quarter_stats.average_cost_per_interaction
    - last_campaign_quarter_stats.average_cost_per_interaction
    fill_fields:
    - campaign_quarter_stats._data_quarter
    sorts:
    - campaign_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${campaign_quarter_stats.average_cost_per_interaction} - ${last_campaign_quarter_stats.average_cost_per_interaction})/${last_campaign_quarter_stats.average_cost_per_interaction}\n"
      value_format:
      value_format_name: percent_0
    hidden_fields:
    - last_campaign_quarter_stats.average_cost_per_interaction
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 6
    col: 12
    width: 6
    height: 4
  - title: Interaction rate qtd (campaign)
    name: Interaction rate qtd (campaign)
    model: google_adwords
    explore: campaign_quarter_stats
    type: single_value
    fields:
    - campaign_quarter_stats._data_quarter
    - campaign_quarter_stats.average_interaction_rate
    - last_campaign_quarter_stats.average_interaction_rate
    fill_fields:
    - campaign_quarter_stats._data_quarter
    sorts:
    - campaign_quarter_stats._data_quarter desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: quarterly_change
      label: Quarterly % Change
      expression: "(${campaign_quarter_stats.average_interaction_rate} - ${last_campaign_quarter_stats.average_interaction_rate}\
        \ )/${last_campaign_quarter_stats.average_interaction_rate}\n"
      value_format:
      value_format_name: percent_0
    hidden_fields:
    - last_campaign_quarter_stats.average_interaction_rate
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
    listen:
      Campaign Name: campaign.campaign_name
    row: 6
    col: 18
    width: 6
    height: 4
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
    label: Cost by ad network
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
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 19
    col: 0
    width: 12
    height: 8
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 575
      - id: master_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 579
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 583
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 563
    listen:
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 19
    col: 12
    width: 12
    height: 8
  - title: Average cost per conversion over time (campaign)
    name: Average cost per conversion over time (campaign)
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 350
      - id: master_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 354
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 358
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 338
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
      __LINE_NUM: 368
    listen:
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 12
    col: 0
    width: 24
    height: 7
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
    label: Cost by Device
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
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 27
    col: 0
    width: 12
    height: 7
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
    label: Funnel by Device
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 726
      - id: master_stats.total_interactions
        name: Campaign Stats Total Interactions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 730
      - id: master_stats.total_conversions
        name: Campaign Stats Total Conversions
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 734
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 714
    listen:
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 27
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 801
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 789
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 819
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 807
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 837
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 825
    series_types:
      master_stats.average_cost_per_conversion: line
    hidden_series:
    - master_stats.total_cost_usd
    listen:
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 34
    col: 0
    width: 12
    height: 7
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 921
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 909
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
        __FILE: google_adwords/campaign_performance.dashboard.lookml
        __LINE_NUM: 939
      __FILE: google_adwords/campaign_performance.dashboard.lookml
      __LINE_NUM: 927
    hidden_series:
    - master_stats.total_cost_usd
    listen:
      Campaign Name: campaign.campaign_name
      Date: master_stats._data_date
    row: 34
    col: 12
    width: 12
    height: 7
  - title: Campaign Budget Utilization
    name: Campaign Budget Utilization
    model: google_adwords
    explore: campaign_budget_stats
    type: looker_column
    fields:
    - campaign_budget_stats.percent_used_budget_tier
    - campaign_budget_stats.total_cost_usd
    - campaign_budget_stats._data_week
    pivots:
    - campaign_budget_stats.percent_used_budget_tier
    sorts:
    - campaign_budget_stats.percent_used_budget_tier
    - campaign_budget_stats._data_week desc
    limit: 500
    column_limit: 50
    label: Campaign Budget Utilization
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
    listen:
      Campaign Name: campaign.campaign_name
      Date: campaign_budget_stats._data_date
    row: 41
    col: 0
    width: 24
    height: 8
  - title: Ad group details
    name: Ad group details
    model: google_adwords
    explore: master_stats
    type: table
    fields:
    - ad_group.ad_group_name
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
    limit: 500
    column_limit: 50
    label: Ad Group Details
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
      Date: master_stats._data_date
    row: 51
    col: 0
    width: 24
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
    - Campaign Name
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
