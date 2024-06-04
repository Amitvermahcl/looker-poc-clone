---
- dashboard: solidus
  title: Solidus
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: z0oKmccSlGkMS7241znR9e
  elements:
  - title: Monthly order life cycle
    name: Monthly order life cycle
    model: looker-poc
    explore: solidus
    type: looker_donut_multiples
    fields: [solidus.scrape_month, sum_of_total_adjustments, sum_of_total_item_value,
      sum_of_total_lines, sum_of_total_orders, sum_of_total_quantity, sum_of_total_shipping]
    fill_fields: [solidus.scrape_month]
    filters: {}
    sorts: [solidus.scrape_month desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_adjustments
      based_on: solidus.total_adjustments
      expression: ''
      label: Sum of Total Adjustments
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Sum of Total Item Value
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_lines
      based_on: solidus.total_lines
      expression: ''
      label: Sum of Total Lines
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_shipping
      based_on: solidus.total_shipping
      expression: ''
      label: Sum of Total Shipping
      type: sum
      _kind_hint: measure
      _type_hint: number
    show_value_labels: false
    font_size: 12
    color_application: undefined
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
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
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    truncate_column_names: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    value_labels: legend
    label_type: labPer
    listen:
      Channel: solidus.channel
      Store Code: solidus.store_code
      Currency: solidus.currency
    row: 0
    col: 0
    width: 24
    height: 8
  - title: Solidus/ Month-Total-Bar
    name: Solidus/ Month-Total-Bar
    model: looker-poc
    explore: solidus
    type: looker_column
    fields: [solidus.scrape_month, sum_of_total_adjustments, sum_of_total_item_value,
      sum_of_total_lines, sum_of_total_orders, sum_of_total_quantity, sum_of_total_shipping]
    fill_fields: [solidus.scrape_month]
    filters: {}
    sorts: [solidus.scrape_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_adjustments
      based_on: solidus.total_adjustments
      expression: ''
      label: Sum of Total Adjustments
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Sum of Total Item Value
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_lines
      based_on: solidus.total_lines
      expression: ''
      label: Sum of Total Lines
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_shipping
      based_on: solidus.total_shipping
      expression: ''
      label: Sum of Total Shipping
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
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
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row: 8
    col: 0
    width: 24
    height: 14
  - title: Fullcan details
    name: Fullcan details
    model: looker-poc
    explore: solidus
    type: looker_grid
    fields: [solidus.scrape_month, sum_of_fullcan_lines, sum_of_fullcan_quantity,
      sum_of_fullcan_value]
    fill_fields: [solidus.scrape_month]
    filters: {}
    sorts: [solidus.scrape_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_adjustments
      based_on: solidus.total_adjustments
      expression: ''
      label: Sum of Total Adjustments
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Sum of Total Item Value
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_lines
      based_on: solidus.total_lines
      expression: ''
      label: Sum of Total Lines
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_shipping
      based_on: solidus.total_shipping
      expression: ''
      label: Sum of Total Shipping
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Average of Total Item Value
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_lines_2
      based_on: solidus.total_lines
      expression: ''
      label: Sum of Total Lines
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_fullcan_lines
      based_on: solidus.fullcan_lines
      expression: ''
      label: Sum of Fullcan Lines
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_fullcan_quantity
      based_on: solidus.fullcan_quantity
      expression: ''
      label: Sum of Fullcan Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_fullcan_value
      based_on: solidus.fullcan_value
      expression: ''
      label: Sum of Fullcan Value
      type: sum
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row: 22
    col: 0
    width: 8
    height: 6
  - title: Order details
    name: Order details
    model: looker-poc
    explore: solidus
    type: looker_pie
    fields: [sum_of_total_orders, solidus.scrape_month]
    fill_fields: [solidus.scrape_month]
    sorts: [sum_of_total_orders desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
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
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    interpolation: linear
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row: 22
    col: 8
    width: 11
    height: 6
  - title: Total order by month
    name: Total order by month
    model: looker-poc
    explore: solidus
    type: looker_column
    fields: [solidus.month, sum_of_total_orders]
    sorts: [solidus.month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row:
    col:
    width:
    height:
  - title: Qty/ Item by month
    name: Qty/ Item by month
    model: looker-poc
    explore: solidus
    type: looker_column
    fields: [solidus.month, sum_of_total_quantity]
    sorts: [solidus.month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row:
    col:
    width:
    height:
  - title: Item value by month
    name: Item value by month
    model: looker-poc
    explore: solidus
    type: looker_column
    fields: [solidus.month, sum_of_total_item_value]
    sorts: [solidus.month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Sum of Total Item Value
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row:
    col:
    width:
    height:
  - title: Tester Qty by month
    name: Tester Qty by month
    model: looker-poc
    explore: solidus
    type: looker_column
    fields: [solidus.month, sum_of_tester_quantity]
    sorts: [solidus.month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Sum of Total Item Value
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_tester_quantity
      based_on: solidus.tester_quantity
      expression: ''
      label: Sum of Tester Quantity
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row:
    col:
    width:
    height:
  - title: Avg tester Qty
    name: Avg tester Qty
    model: looker-poc
    explore: solidus
    type: looker_column
    fields: [solidus.month, average_of_tester_quantity]
    sorts: [solidus.month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_total_orders
      based_on: solidus.total_orders
      expression: ''
      label: Sum of Total Orders
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_quantity
      based_on: solidus.total_quantity
      expression: ''
      label: Sum of Total Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_total_item_value
      based_on: solidus.total_item_value
      expression: ''
      label: Sum of Total Item Value
      type: sum
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Tester Quantity
      based_on: solidus.tester_quantity
      _kind_hint: measure
      measure: sum_of_tester_quantity
      type: average
      _type_hint: number
    - measure: average_of_tester_quantity
      based_on: solidus.tester_quantity
      expression: ''
      label: Average of Tester Quantity
      type: average
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: []
    show_null_points: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Store Code: solidus.store_code
      Channel: solidus.channel
      Currency: solidus.currency
    row:
    col:
    width:
    height:
  filters:
  - name: Store Code
    title: Store Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: solidus
    listens_to_filters: []
    field: solidus.store_code
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: solidus
    listens_to_filters: []
    field: solidus.channel
  - name: Currency
    title: Currency
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: looker-poc
    explore: solidus
    listens_to_filters: []
    field: solidus.currency
