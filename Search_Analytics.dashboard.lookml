---
- dashboard: search_analytics
  title: Search Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: YCClPOOdSbGKQkOnmN792w
  elements:
  - title: Visits & Hits
    name: Visits & Hits
    model: looker-poc
    explore: google_analytics
    type: looker_line
    fields: [google_analytics.date_month, sum_of_visits, sum_of_hits]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
    sorts: [google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_hits
      based_on: google_analytics.hits
      expression: ''
      label: Sum of Hits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    y_axes: [{label: Visits, orientation: left, series: [{axisId: sum_of_visits, id: sum_of_visits,
            name: Sum of Visits}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: Hits, orientation: left, series: [{axisId: sum_of_hits, id: sum_of_hits,
            name: Sum of Hits}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    hidden_pivots: {}
    listen:
      Country: google_analytics.country
      Coatings Bu: google_analytics.coatings_bu
      Campaign: google_analytics.campaign
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 8
    col: 0
    width: 24
    height: 12
  - title: GA/ Month-Sum of Bounces & Avg of Bounces
    name: GA/ Month-Sum of Bounces & Avg of Bounces
    model: looker-poc
    explore: google_analytics
    type: looker_column
    fields: [google_analytics.date_month, sum_of_bounces_2, average_of_bounces]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
    sorts: [google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_hits
      based_on: google_analytics.hits
      expression: ''
      label: Sum of Hits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces_2
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Average of Bounces
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
    x_axis_reversed: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: sum_of_visits,
            id: sum_of_visits, name: Sum of Visits}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: sum_of_hits, id: sum_of_hits,
            name: Sum of Hits}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
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
    hidden_pivots: {}
    listen:
      Country: google_analytics.country
      Coatings Bu: google_analytics.coatings_bu
      Campaign: google_analytics.campaign
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 20
    col: 0
    width: 24
    height: 12
  - title: Top 10 Sum of Bounces as per brand by Month
    name: Top 10 Sum of Bounces as per brand by Month
    model: looker-poc
    explore: google_analytics
    type: looker_line
    fields: [google_analytics.date_month, sum_of_bounces_2, average_of_bounces, google_analytics.brand]
    pivots: [google_analytics.brand]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
    sorts: [google_analytics.brand, google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_hits
      based_on: google_analytics.hits
      expression: ''
      label: Sum of Hits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces_2
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Average of Bounces
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_bounces_2
      based_on: google_analytics.bounces
      expression: ''
      label: Average of Bounces
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Count of Bounces
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: median_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Median of Bounces
      type: median
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: sum_of_visits,
            id: sum_of_visits, name: Sum of Visits}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: sum_of_hits, id: sum_of_hits,
            name: Sum of Hits}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '12'
    label_value_format: ''
    series_colors: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
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
    hidden_pivots: {}
    hidden_fields: [average_of_bounces]
    value_labels: legend
    label_type: labPer
    listen:
      Country: google_analytics.country
      Campaign: google_analytics.campaign
      Coatings Bu: google_analytics.coatings_bu
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 32
    col: 0
    width: 24
    height: 7
  - title: GA url ranking by pageviews
    name: GA url ranking by pageviews
    model: looker-poc
    explore: google_analytics
    type: looker_column
    fields: [google_analytics.date_month, average_of_pageviews, google_analytics.ga_url]
    pivots: [google_analytics.ga_url]
    fill_fields: [google_analytics.date_month]
    sorts: [google_analytics.ga_url, google_analytics.date_month desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: average_of_pageviews
      based_on: google_analytics.pageviews
      expression: ''
      label: Average of Pageviews
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
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    listen:
      Country: google_analytics.country
      Campaign: google_analytics.campaign
      Coatings Bu: google_analytics.coatings_bu
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 39
    col: 0
    width: 24
    height: 6
  - title: Sum of Visits & Sum of Hits as per market id by month
    name: Sum of Visits & Sum of Hits as per market id by month
    model: looker-poc
    explore: google_analytics
    type: looker_line
    fields: [google_analytics.date_month, sum_of_visits, sum_of_hits, google_analytics.market_id]
    pivots: [google_analytics.market_id]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
    sorts: [google_analytics.market_id, google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_hits
      based_on: google_analytics.hits
      expression: ''
      label: Sum of Hits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
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
    font_size: 12
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: sum_of_visits,
            id: sum_of_visits, name: Sum of Visits}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: sum_of_hits, id: sum_of_hits,
            name: Sum of Hits}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
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
    hidden_pivots: {}
    truncate_column_names: false
    value_labels: legend
    label_type: labPer
    listen:
      Country: google_analytics.country
      Coatings Bu: google_analytics.coatings_bu
      Campaign: google_analytics.campaign
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 45
    col: 0
    width: 24
    height: 11
  - title: 'Sum of Visits and Hits based on platform '
    name: 'Sum of Visits and Hits based on platform '
    model: looker-poc
    explore: google_analytics
    type: looker_line
    fields: [google_analytics.date_month, sum_of_visits, sum_of_hits, google_analytics.platform]
    pivots: [google_analytics.platform]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
    sorts: [google_analytics.platform, google_analytics.date_month desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_hits
      based_on: google_analytics.hits
      expression: ''
      label: Sum of Hits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
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
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_visits, id: ASC
              - sum_of_visits, name: ASC - Sum of Visits}, {axisId: sum_of_visits,
            id: DP CHN - sum_of_visits, name: DP CHN - Sum of Visits}, {axisId: sum_of_visits,
            id: DP EMEA - sum_of_visits, name: DP EMEA - Sum of Visits}, {axisId: sum_of_visits,
            id: DP SAM - sum_of_visits, name: DP SAM - Sum of Visits}, {axisId: sum_of_visits,
            id: DP SESA - sum_of_visits, name: DP SESA - Sum of Visits}, {axisId: sum_of_visits,
            id: ICO - sum_of_visits, name: ICO - Sum of Visits}, {axisId: sum_of_visits,
            id: MPY - sum_of_visits, name: MPY - Sum of Visits}, {axisId: sum_of_visits,
            id: NULL - sum_of_visits, name: NULL - Sum of Visits}, {axisId: sum_of_visits,
            id: POW - sum_of_visits, name: POW - Sum of Visits}, {axisId: sum_of_visits,
            id: google_analytics.platform___null - sum_of_visits, name: "∅ - Sum of\
              \ Visits"}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: '', orientation: left, series: [{axisId: sum_of_hits,
            id: ASC - sum_of_hits, name: ASC - Sum of Hits}, {axisId: sum_of_hits,
            id: DP CHN - sum_of_hits, name: DP CHN - Sum of Hits}, {axisId: sum_of_hits,
            id: DP EMEA - sum_of_hits, name: DP EMEA - Sum of Hits}, {axisId: sum_of_hits,
            id: DP SAM - sum_of_hits, name: DP SAM - Sum of Hits}, {axisId: sum_of_hits,
            id: DP SESA - sum_of_hits, name: DP SESA - Sum of Hits}, {axisId: sum_of_hits,
            id: ICO - sum_of_hits, name: ICO - Sum of Hits}, {axisId: sum_of_hits,
            id: MPY - sum_of_hits, name: MPY - Sum of Hits}, {axisId: sum_of_hits,
            id: NULL - sum_of_hits, name: NULL - Sum of Hits}, {axisId: sum_of_hits,
            id: POW - sum_of_hits, name: POW - Sum of Hits}, {axisId: sum_of_hits,
            id: google_analytics.platform___null - sum_of_hits, name: "∅ - Sum of\
              \ Hits"}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: 12
    label_value_format: ''
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    hidden_pivots: {}
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
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Country: google_analytics.country
      Campaign: google_analytics.campaign
      Coatings Bu: google_analytics.coatings_bu
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 56
    col: 0
    width: 24
    height: 12
  - title: Sum of Visits and Hits based on Source by Month
    name: Sum of Visits and Hits based on Source by Month
    model: looker-poc
    explore: google_analytics
    type: looker_area
    fields: [google_analytics.date_month, sum_of_visits, sum_of_hits, google_analytics.source]
    pivots: [google_analytics.source]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
    sorts: [google_analytics.source, google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_hits
      based_on: google_analytics.hits
      expression: ''
      label: Sum of Hits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: true
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
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_visits, id: ASC
              - sum_of_visits, name: ASC - Sum of Visits}, {axisId: sum_of_visits,
            id: DP CHN - sum_of_visits, name: DP CHN - Sum of Visits}, {axisId: sum_of_visits,
            id: DP EMEA - sum_of_visits, name: DP EMEA - Sum of Visits}, {axisId: sum_of_visits,
            id: DP SAM - sum_of_visits, name: DP SAM - Sum of Visits}, {axisId: sum_of_visits,
            id: DP SESA - sum_of_visits, name: DP SESA - Sum of Visits}, {axisId: sum_of_visits,
            id: ICO - sum_of_visits, name: ICO - Sum of Visits}, {axisId: sum_of_visits,
            id: MPY - sum_of_visits, name: MPY - Sum of Visits}, {axisId: sum_of_visits,
            id: NULL - sum_of_visits, name: NULL - Sum of Visits}, {axisId: sum_of_visits,
            id: POW - sum_of_visits, name: POW - Sum of Visits}, {axisId: sum_of_visits,
            id: google_analytics.platform___null - sum_of_visits, name: "∅ - Sum of\
              \ Visits"}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: '', orientation: left, series: [{axisId: sum_of_hits,
            id: ASC - sum_of_hits, name: ASC - Sum of Hits}, {axisId: sum_of_hits,
            id: DP CHN - sum_of_hits, name: DP CHN - Sum of Hits}, {axisId: sum_of_hits,
            id: DP EMEA - sum_of_hits, name: DP EMEA - Sum of Hits}, {axisId: sum_of_hits,
            id: DP SAM - sum_of_hits, name: DP SAM - Sum of Hits}, {axisId: sum_of_hits,
            id: DP SESA - sum_of_hits, name: DP SESA - Sum of Hits}, {axisId: sum_of_hits,
            id: ICO - sum_of_hits, name: ICO - Sum of Hits}, {axisId: sum_of_hits,
            id: MPY - sum_of_hits, name: MPY - Sum of Hits}, {axisId: sum_of_hits,
            id: NULL - sum_of_hits, name: NULL - Sum of Hits}, {axisId: sum_of_hits,
            id: POW - sum_of_hits, name: POW - Sum of Hits}, {axisId: sum_of_hits,
            id: google_analytics.platform___null - sum_of_hits, name: "∅ - Sum of\
              \ Hits"}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: 12
    label_value_format: ''
    series_colors: {}
    ordering: none
    show_null_labels: false
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
    hidden_pivots: {}
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
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Country: google_analytics.country
      Campaign: google_analytics.campaign
      Coatings Bu: google_analytics.coatings_bu
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 68
    col: 0
    width: 24
    height: 12
  - title: Search Traffic
    name: Search Traffic
    model: looker-poc
    explore: google_analytics
    type: looker_column
    fields: [google_analytics.date_month, sum_of_visits]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.hit_type: ''
      google_analytics.extra_bu: ''
      google_analytics.event_action: ''
      google_analytics.event_category: ''
      google_analytics.event_label: ''
      google_analytics.country: ''
      google_analytics.coatings_bu: ''
      google_analytics.campaign: ''
      google_analytics.brand: ''
    sorts: [google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visits
      based_on: google_analytics.visits
      expression: ''
      label: Sum of Visits
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_bounces
      based_on: google_analytics.bounces
      expression: ''
      label: Sum of Bounces
      type: sum
      _kind_hint: measure
      _type_hint: number
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    y_axes: [{label: Visits, orientation: left, series: [{axisId: sum_of_visits, id: sum_of_visits,
            name: Sum of Visits}], showLabels: true, showValues: true, minValue: 0,
        valueFormat: '', unpinAxis: true, tickDensity: custom, tickDensityCustom: 3,
        type: linear}]
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
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
    hidden_pivots: {}
    listen:
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 0
    col: 0
    width: 24
    height: 8
  - title: Color Swiper
    name: Color Swiper
    model: looker-poc
    explore: google_analytics
    type: looker_column
    fields: [google_analytics.date_month, google_analytics.total_visits]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.event_category: colorswiper
    sorts: [google_analytics.date_month desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: google_analytics.country
      Campaign: google_analytics.campaign
      Coatings Bu: google_analytics.coatings_bu
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 80
    col: 0
    width: 24
    height: 5
  - title: 'Color swiper by unique and total visitor '
    name: 'Color swiper by unique and total visitor '
    model: looker-poc
    explore: google_analytics
    type: looker_donut_multiples
    fields: [google_analytics.date_month, google_analytics.total_visits, count_of_visit_id]
    fill_fields: [google_analytics.date_month]
    filters:
      google_analytics.event_category: colorswiper
    sorts: [google_analytics.date_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_visit_id
      based_on: google_analytics.visit_id
      expression: ''
      label: Sum of Visit ID
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_visit_id
      based_on: google_analytics.visit_id
      expression: ''
      label: Count of Visit ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_value_labels: false
    font_size: 12
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
      Country: google_analytics.country
      Campaign: google_analytics.campaign
      Coatings Bu: google_analytics.coatings_bu
      Brand: google_analytics.brand
      Device Category: google_analytics.device_category
      Platform: google_analytics.platform
      Bu: google_analytics.bu
      Medium: google_analytics.medium
    row: 85
    col: 0
    width: 24
    height: 10
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.brand
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.country
  - name: Bu
    title: Bu
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.bu
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.campaign
  - name: Device Category
    title: Device Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.device_category
  - name: Platform
    title: Platform
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.platform
  - name: Coatings Bu
    title: Coatings Bu
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.coatings_bu
  - name: Medium
    title: Medium
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - organic
      - social-org
      - social_Organic_
      - org
    model: looker-poc
    explore: google_analytics
    listens_to_filters: []
    field: google_analytics.medium
