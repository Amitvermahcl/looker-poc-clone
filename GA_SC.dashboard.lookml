---
- dashboard: ga_sc
  title: GA_SC
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fQ1pOVMfSHeWqwsttXIvLd
  elements:
  - title: GA_SC
    name: GA_SC
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.bounces, vkt_ga.hits, vkt_ga.pageviews, vkt_sc.clicks, vkt_sc.ctr,
      vkt_ga.raw_date]
    fill_fields: [vkt_ga.raw_date]
    filters: {}
    sorts: [vkt_ga.bounces desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Country: vkt_ga.country
      Medium: vkt_ga.medium
      Main Device: vkt_sc.main_device
    row: 0
    col: 0
    width: 24
    height: 6
  - title: GA_SC -Clicks & CTR
    name: GA_SC -Clicks & CTR
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_sc.clicks, vkt_sc.ctr, vkt_ga.raw_date]
    fill_fields: [vkt_ga.raw_date]
    filters: {}
    sorts: [vkt_ga.raw_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Country: vkt_ga.country
      Medium: vkt_ga.medium
      Main Device: vkt_sc.main_device
    row: 6
    col: 0
    width: 24
    height: 6
  - title: GA_SC -Page Views Impressions & Visits
    name: GA_SC -Page Views Impressions & Visits
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.raw_date, vkt_sc.impressions, vkt_ga.pageviews, vkt_ga.visits]
    fill_fields: [vkt_ga.raw_date]
    filters: {}
    sorts: [vkt_ga.raw_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Country: vkt_ga.country
      Medium: vkt_ga.medium
      Main Device: vkt_sc.main_device
    row: 12
    col: 0
    width: 24
    height: 6
  - title: Impressions by month
    name: Impressions by month
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_sc.format_date, vkt_sc.impressions]
    fill_fields: [vkt_sc.format_date]
    filters: {}
    sorts: [vkt_sc.format_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: vkt_sc.impressions,
            id: vkt_sc.impressions, name: Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 16, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Country: vkt_ga.country
      Medium: vkt_ga.medium
      Main Device: vkt_sc.main_device
    row: 18
    col: 0
    width: 24
    height: 5
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: United Kingdom
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: vkt_ga_sc
    listens_to_filters: []
    field: vkt_ga.country
  - name: Medium
    title: Medium
    type: field_filter
    default_value: "%paid%,%organic%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: vkt_ga_sc
    listens_to_filters: []
    field: vkt_ga.medium
  - name: Main Device
    title: Main Device
    type: field_filter
    default_value: Desktop
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: vkt_ga_sc
    listens_to_filters: []
    field: vkt_sc.main_device
