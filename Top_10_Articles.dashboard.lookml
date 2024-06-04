---
- dashboard: top_10_articles
  title: Top 10 Articles
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OPD7amBmDstDdgA2ysAqSY
  elements:
  - title: By Device type
    name: By Device type
    model: looker-poc
    explore: searchconsole
    type: looker_line
    fields: [searchconsole.count, searchconsole.page, searchconsole.device]
    pivots: [searchconsole.device]
    sorts: [searchconsole.device, searchconsole.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
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
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchconsole.count,
            id: DESKTOP - searchconsole.count, name: DESKTOP}, {axisId: searchconsole.count,
            id: MOBILE - searchconsole.count, name: MOBILE}, {axisId: searchconsole.count,
            id: TABLET - searchconsole.count, name: TABLET}], showLabels: true, showValues: false,
        maxValue: !!null '', minValue: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 45, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 7
  - title: By Page
    name: By Page
    model: looker-poc
    explore: searchconsole
    type: looker_column
    fields: [searchconsole.count, searchconsole.property]
    sorts: [searchconsole.count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
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
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchconsole.count,
            id: DESKTOP - searchconsole.count, name: DESKTOP}, {axisId: searchconsole.count,
            id: MOBILE - searchconsole.count, name: MOBILE}, {axisId: searchconsole.count,
            id: TABLET - searchconsole.count, name: TABLET}], showLabels: true, showValues: false,
        maxValue: !!null '', minValue: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 45, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 7
    col: 0
    width: 24
    height: 7
