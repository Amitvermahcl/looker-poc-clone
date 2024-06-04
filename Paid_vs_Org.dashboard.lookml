---
- dashboard: paid_vs_org
  title: Paid V/S Org
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: AHnenxNrpLQRBVdhD14Z7J
  elements:
  - title: Paid
    name: Paid
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_sc.impressions, vkt_ga.raw_date]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%paid%"
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
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 1
    col: 0
    width: 24
    height: 4
  - title: Org
    name: Org
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_sc.impressions, vkt_ga.raw_date]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%org%"
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
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 5
    col: 0
    width: 24
    height: 4
  - title: By Website (Org)
    name: By Website (Org)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_grid
    fields: [vkt_sc.property, vkt_ga.count]
    filters:
      vkt_ga.medium: "%org%"
    sorts: [vkt_ga.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      vkt_ga.count: Search count
      vkt_sc.property: Website
    series_cell_visualizations:
      vkt_sc.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: vkt_ga.country
    row: 19
    col: 12
    width: 12
    height: 6
  - title: Org
    name: Org (2)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.raw_date, vkt_ga.visits]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%org%"
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
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 14
    col: 0
    width: 24
    height: 4
  - title: " Paid"
    name: " Paid"
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.raw_date, vkt_ga.visits]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%paid%"
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
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 10
    col: 0
    width: 24
    height: 4
  - title: By Website (Paid)
    name: By Website (Paid)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_grid
    fields: [vkt_sc.property, vkt_ga.count]
    filters:
      vkt_ga.medium: "%paid%"
    sorts: [vkt_sc.property]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      vkt_ga.count: Search count
      vkt_sc.property: Website
    series_cell_visualizations:
      vkt_sc.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: vkt_ga.country
    row: 19
    col: 0
    width: 12
    height: 6
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Search Traffic","bold":true,"color":"hsl(244,
      100%, 50%)"}],"align":"center","id":1702023245790}]'
    rich_content_json: '{"format":"slate"}'
    row: 9
    col: 0
    width: 24
    height: 1
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Top 10 Search Keywords","bold":true,"color":"hsl(244,
      100%, 50%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 18
    col: 0
    width: 24
    height: 1
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Search Impression","bold":true,"color":"hsl(244,
      100%, 50%)"}],"align":"center","id":1702023245790}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 1
  - title: By CTR (Paid)
    name: By CTR (Paid)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_grid
    fields: [vkt_sc.ctr, vkt_sc.property]
    filters:
      vkt_ga.medium: "%paid%"
    sorts: [vkt_sc.ctr desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      vkt_ga.count: Search count
    series_cell_visualizations:
      vkt_sc.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: vkt_ga.country
    row: 25
    col: 0
    width: 12
    height: 6
  - title: By CTR (Org)
    name: By CTR (Org)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_grid
    fields: [vkt_sc.ctr, vkt_sc.property]
    filters:
      vkt_ga.medium: "%org%"
    sorts: [vkt_sc.ctr desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      vkt_ga.count: Search count
    series_cell_visualizations:
      vkt_sc.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: vkt_ga.country
    row: 25
    col: 12
    width: 12
    height: 6
  - name: " (Copy 3)"
    type: text
    title_text: " (Copy 3)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Bounces","bold":true,"color":"hsl(244,
      100%, 50%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 31
    col: 0
    width: 24
    height: 1
  - title: Org
    name: Org (3)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.bounces, vkt_ga.raw_date]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%org%"
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
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 36
    col: 0
    width: 24
    height: 4
  - title: Paid
    name: Paid (2)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.bounces, vkt_ga.raw_date]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%paid%"
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
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 32
    col: 0
    width: 24
    height: 4
  - name: " (Copy 4)"
    type: text
    title_text: " (Copy 4)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Average page views/sessions","bold":true,"color":"hsl(244,
      100%, 50%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 40
    col: 0
    width: 24
    height: 1
  - title: Paid
    name: Paid (3)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.raw_date, vkt_ga.pageviews]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%paid%"
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
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: line, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}]
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 41
    col: 0
    width: 24
    height: 4
  - title: Org
    name: Org (4)
    model: looker-poc
    explore: vkt_ga_sc
    type: looker_line
    fields: [vkt_ga.raw_date, vkt_ga.pageviews]
    fill_fields: [vkt_ga.raw_date]
    filters:
      vkt_ga.medium: "%org%"
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
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: line, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}]
    defaults_version: 1
    listen:
      Country: vkt_ga.country
    row: 45
    col: 0
    width: 24
    height: 4
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: looker-poc
    explore: vkt_ga_sc
    listens_to_filters: []
    field: vkt_ga.country
