---
- dashboard: cross_channel__marketo_to_web
  title: Cross Channel | Marketo to Web
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: PwnkjzX4JWcm8IjoBtBAyH
  elements:
  - title: Email Performance
    name: Email Performance
    model: looker-poc
    explore: marketo
    type: looker_line
    fields: [sum_of_click_email, sum_of_email_delivered, sum_of_send_email, marketo.date_month]
    fill_fields: [marketo.date_month]
    sorts: [sum_of_click_email desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Click Email
      based_on: marketo.click_email
      _kind_hint: measure
      measure: sum_of_click_email
      type: sum
      _type_hint: number
      filters:
        marketo.click_email: '1'
    - category: measure
      expression: ''
      label: Sum of Email Delivered
      based_on: marketo.email_delivered
      _kind_hint: measure
      measure: sum_of_email_delivered
      type: sum
      _type_hint: number
      filters:
        marketo.email_delivered: '1'
    - category: measure
      expression: ''
      label: Sum of Send Email
      based_on: marketo.send_email
      _kind_hint: measure
      measure: sum_of_send_email
      type: sum
      _type_hint: number
      filters:
        marketo.send_email: '1'
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Email Count, orientation: left, series: [{axisId: sum_of_click_email,
            id: sum_of_click_email, name: Sum of Click Email}, {axisId: sum_of_email_delivered,
            id: sum_of_email_delivered, name: Sum of Email Delivered}, {axisId: sum_of_send_email,
            id: sum_of_send_email, name: Sum of Send Email}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 76, type: linear}]
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      sum_of_click_email: Email Clicked
      sum_of_email_delivered: Email Delivered
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Campaign: marketo.campaign
      Country: marketo.country
      Device: marketo.device
      Campaign Type: marketo.campaign_type
      Brand: marketo.brand
      Segment: marketo.segment
    row: 0
    col: 0
    width: 24
    height: 7
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.campaign
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
    explore: marketo
    listens_to_filters: []
    field: marketo.country
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.device
  - name: Campaign Type
    title: Campaign Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.campaign_type
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.brand
  - name: Segment
    title: Segment
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.segment
