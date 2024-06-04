---
- dashboard: bouncerate
  title: BounceRate
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: xfghxhw5jqPAH7xfd9votq
  elements:
  - title: BounceRate
    name: BounceRate
    model: looker-poc
    explore: co_ga_sc
    type: looker_column
    fields: [raw_ga_1.country, sum_of_bounces, sum_of_visits]
    filters:
      sum_of_bounces: ">=20000"
      sum_of_visits: ">=100000"
    sorts: [raw_ga_1.country desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_bounces}/${sum_of_visits}"
      label: Bounces Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: bounces_rate
      _type_hint: number
    - measure: sum_of_bounces
      based_on: raw_ga_1.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_visits
      based_on: raw_ga_1.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_bounces, id: sum_of_bounces,
            name: Sum of Bounces}, {axisId: sum_of_visits, id: sum_of_visits, name: Sum
              of Visits}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: bounces_rate, id: bounces_rate, name: Bounces Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
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
    minimum_column_width: 75
    series_column_widths:
      sum_of_bounces: 134
      sum_of_visits: 128
      raw_ga_1.country: 196
      bounces_rate: 137
    show_null_points: true
    listen:
      Main Device: raw_ga_1.main_device
      Country: raw_ga_1.country
    row: 0
    col: 0
    width: 24
    height: 7
  - title: Bounce rate details1
    name: Bounce rate details1
    model: looker-poc
    explore: co_ga_sc
    type: looker_line
    fields: [raw_ga_1.country, sum_of_bounces, sum_of_visits]
    filters:
      raw_ga_1.main_device: ''
      raw_ga_1.country: "-NULL"
      sum_of_bounces: ">=20000"
      sum_of_visits: ">=10000"
    sorts: [raw_ga_1.country desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_bounces}/${sum_of_visits}"
      label: Bounces Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: bounces_rate
      _type_hint: number
    - measure: sum_of_bounces
      based_on: raw_ga_1.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_visits
      based_on: raw_ga_1.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_bounces, id: sum_of_bounces,
            name: Sum of Bounces}, {axisId: sum_of_visits, id: sum_of_visits, name: Sum
              of Visits}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: bounces_rate, id: bounces_rate, name: Bounces Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
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
    minimum_column_width: 75
    series_column_widths:
      sum_of_bounces: 134
      sum_of_visits: 128
      raw_ga_1.country: 196
      bounces_rate: 137
    listen: {}
    row: 7
    col: 0
    width: 24
    height: 7
  filters:
  - name: Main Device
    title: Main Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: co_ga_sc
    listens_to_filters: []
    field: raw_ga_1.main_device
  - name: Country
    title: Country
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: co_ga_sc
    listens_to_filters: []
    field: raw_ga_1.country
