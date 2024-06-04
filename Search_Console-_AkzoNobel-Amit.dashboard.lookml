---
- dashboard: search_console_akzonobelamit_
  title: 'Search Console- AkzoNobel-Amit '
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: tJACI03RWNTM1D2JELWcjS
  elements:
  - title: Monthly-Search Impressions
    name: Monthly-Search Impressions
    model: looker-poc
    explore: searchconsole
    type: looker_area
    fields: [searchconsole.date_month, sum_of_impressions]
    fill_fields: [searchconsole.date_month]
    filters: {}
    sorts: [searchconsole.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: sum_of_impressions, name: Sum of Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 0
    col: 0
    width: 24
    height: 7
  - title: Monthly Search Imp Percentage
    name: Monthly Search Imp Percentage
    model: looker-poc
    explore: searchconsole
    type: looker_pie
    fields: [searchconsole.date_month, sum_of_impressions]
    fill_fields: [searchconsole.date_month]
    filters: {}
    sorts: [searchconsole.date_month desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_position
      based_on: searchconsole.position
      expression: ''
      label: Sum of Position
      type: sum
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_value_labels: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: sum_of_impressions, name: Sum of Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
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
    defaults_version: 1
    hidden_pivots: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 7
    col: 0
    width: 24
    height: 9
  - title: Monthly- Sum of Clicks & CTR
    name: Monthly- Sum of Clicks & CTR
    model: looker-poc
    explore: searchconsole
    type: looker_column
    fields: [searchconsole.date_month, sum_of_clicks, sum_of_ctr]
    fill_fields: [searchconsole.date_month]
    filters:
      searchconsole.type: ''
    sorts: [searchconsole.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_clicks
      based_on: searchconsole.clicks
      expression: ''
      label: Sum of Clicks
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_ctr
      based_on: searchconsole.ctr
      expression: ''
      label: Sum of Ctr
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
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: sum_of_impressions, name: Sum of Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 16
    col: 0
    width: 24
    height: 8
  - title: New Tile
    name: New Tile
    model: looker-poc
    explore: searchconsole
    type: looker_line
    fields: [searchconsole.date_month, sum_of_impressions, searchconsole.page]
    pivots: [searchconsole.page]
    fill_fields: [searchconsole.date_month]
    filters: {}
    sorts: [searchconsole.page, searchconsole.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
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
    show_value_labels: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: sum_of_impressions, name: Sum of Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
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
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    font_size: 12
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 24
    col: 0
    width: 24
    height: 21
  - title: 'Country by Sum of clicks '
    name: 'Country by Sum of clicks '
    model: looker-poc
    explore: searchconsole
    type: looker_line
    fields: [sum_of_clicks, searchconsole.date_month, searchconsole.country]
    pivots: [searchconsole.country]
    fill_fields: [searchconsole.date_month]
    sorts: [searchconsole.country, searchconsole.date_month desc]
    limit: 500
    column_limit: 500
    dynamic_fields:
    - measure: sum_of_clicks
      based_on: searchconsole.clicks
      expression: ''
      label: Sum of Clicks
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_clicks, id: abw
              - sum_of_clicks, name: abw}, {axisId: sum_of_clicks, id: afg - sum_of_clicks,
            name: afg}, {axisId: sum_of_clicks, id: ago - sum_of_clicks, name: ago},
          {axisId: sum_of_clicks, id: aia - sum_of_clicks, name: aia}, {axisId: sum_of_clicks,
            id: ala - sum_of_clicks, name: ala}, {axisId: sum_of_clicks, id: alb -
              sum_of_clicks, name: alb}, {axisId: sum_of_clicks, id: and - sum_of_clicks,
            name: and}, {axisId: sum_of_clicks, id: are - sum_of_clicks, name: are},
          {axisId: sum_of_clicks, id: arg - sum_of_clicks, name: arg}, {axisId: sum_of_clicks,
            id: arm - sum_of_clicks, name: arm}, {axisId: sum_of_clicks, id: asm -
              sum_of_clicks, name: asm}, {axisId: sum_of_clicks, id: ata - sum_of_clicks,
            name: ata}, {axisId: sum_of_clicks, id: atg - sum_of_clicks, name: atg},
          {axisId: sum_of_clicks, id: aus - sum_of_clicks, name: aus}, {axisId: sum_of_clicks,
            id: aut - sum_of_clicks, name: aut}, {axisId: sum_of_clicks, id: aze -
              sum_of_clicks, name: aze}, {axisId: sum_of_clicks, id: bdi - sum_of_clicks,
            name: bdi}, {axisId: sum_of_clicks, id: bel - sum_of_clicks, name: bel},
          {axisId: sum_of_clicks, id: ben - sum_of_clicks, name: ben}, {axisId: sum_of_clicks,
            id: bes - sum_of_clicks, name: bes}, {axisId: sum_of_clicks, id: bfa -
              sum_of_clicks, name: bfa}, {axisId: sum_of_clicks, id: bgd - sum_of_clicks,
            name: bgd}, {axisId: sum_of_clicks, id: bgr - sum_of_clicks, name: bgr},
          {axisId: sum_of_clicks, id: bhr - sum_of_clicks, name: bhr}, {axisId: sum_of_clicks,
            id: bhs - sum_of_clicks, name: bhs}, {axisId: sum_of_clicks, id: bih -
              sum_of_clicks, name: bih}, {axisId: sum_of_clicks, id: blm - sum_of_clicks,
            name: blm}, {axisId: sum_of_clicks, id: blr - sum_of_clicks, name: blr},
          {axisId: sum_of_clicks, id: blz - sum_of_clicks, name: blz}, {axisId: sum_of_clicks,
            id: bmu - sum_of_clicks, name: bmu}, {axisId: sum_of_clicks, id: bol -
              sum_of_clicks, name: bol}, {axisId: sum_of_clicks, id: bra - sum_of_clicks,
            name: bra}, {axisId: sum_of_clicks, id: brb - sum_of_clicks, name: brb},
          {axisId: sum_of_clicks, id: brn - sum_of_clicks, name: brn}, {axisId: sum_of_clicks,
            id: btn - sum_of_clicks, name: btn}, {axisId: sum_of_clicks, id: bwa -
              sum_of_clicks, name: bwa}, {axisId: sum_of_clicks, id: caf - sum_of_clicks,
            name: caf}, {axisId: sum_of_clicks, id: can - sum_of_clicks, name: can},
          {axisId: sum_of_clicks, id: che - sum_of_clicks, name: che}, {axisId: sum_of_clicks,
            id: chl - sum_of_clicks, name: chl}, {axisId: sum_of_clicks, id: chn -
              sum_of_clicks, name: chn}, {axisId: sum_of_clicks, id: civ - sum_of_clicks,
            name: civ}, {axisId: sum_of_clicks, id: cmr - sum_of_clicks, name: cmr},
          {axisId: sum_of_clicks, id: cod - sum_of_clicks, name: cod}, {axisId: sum_of_clicks,
            id: cog - sum_of_clicks, name: cog}, {axisId: sum_of_clicks, id: cok -
              sum_of_clicks, name: cok}, {axisId: sum_of_clicks, id: col - sum_of_clicks,
            name: col}, {axisId: sum_of_clicks, id: com - sum_of_clicks, name: com},
          {axisId: sum_of_clicks, id: cpv - sum_of_clicks, name: cpv}, {axisId: sum_of_clicks,
            id: cri - sum_of_clicks, name: cri}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    hide_legend: true
    swap_axes: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 45
    col: 0
    width: 24
    height: 36
  - title: Top 10 Articles by devices
    name: Top 10 Articles by devices
    model: looker-poc
    explore: searchconsole
    type: looker_column
    fields: [searchconsole.page, sum_of_impressions, searchconsole.device]
    pivots: [searchconsole.device]
    sorts: [searchconsole.device, sum_of_impressions desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
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
    limit_displayed_rows: true
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 81
    col: 0
    width: 8
    height: 6
  - title: Top 10 Keywords by Impressions
    name: Top 10 Keywords by Impressions
    model: looker-poc
    explore: searchconsole
    type: looker_grid
    fields: [sum_of_impressions, searchconsole.query]
    sorts: [sum_of_impressions desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
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
    x_axis_zoom: true
    y_axis_zoom: true
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
    defaults_version: 1
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 81
    col: 8
    width: 8
    height: 12
  - title: Top 10 Keywords by Clicks
    name: Top 10 Keywords by Clicks
    model: looker-poc
    explore: searchconsole
    type: looker_grid
    fields: [searchconsole.query, sum_of_clicks]
    sorts: [sum_of_clicks desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_clicks
      based_on: searchconsole.clicks
      expression: ''
      label: Sum of Clicks
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
    limit_displayed_rows: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 81
    col: 16
    width: 8
    height: 6
  - title: Top 10 Keywords by CTR
    name: Top 10 Keywords by CTR
    model: looker-poc
    explore: searchconsole
    type: looker_grid
    fields: [searchconsole.query, sum_of_ctr]
    sorts: [sum_of_ctr desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_impressions
      based_on: searchconsole.impressions
      expression: ''
      label: Sum of Impressions
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_clicks
      based_on: searchconsole.clicks
      expression: ''
      label: Sum of Clicks
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_ctr
      based_on: searchconsole.ctr
      expression: ''
      label: Sum of Ctr
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
    limit_displayed_rows: true
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Property: searchconsole.property
      Search type: searchconsole.searchtype
      Country: searchconsole.country
      Device: searchconsole.device
      Position: searchconsole.position
    row: 87
    col: 0
    width: 8
    height: 6
  filters:
  - name: Property
    title: Property
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: searchconsole
    listens_to_filters: []
    field: searchconsole.property
  - name: Search type
    title: Search type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: looker-poc
    explore: searchconsole
    listens_to_filters: []
    field: searchconsole.searchtype
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
    explore: searchconsole
    listens_to_filters: []
    field: searchconsole.country
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: looker-poc
    explore: searchconsole
    listens_to_filters: []
    field: searchconsole.device
  - name: Position
    title: Position
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: looker-poc
    explore: searchconsole
    listens_to_filters: []
    field: searchconsole.position
