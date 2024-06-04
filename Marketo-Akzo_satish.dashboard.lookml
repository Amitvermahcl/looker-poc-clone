---
- dashboard: marketoakzo_satish
  title: Marketo-Akzo_satish
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MrwigP0p8GYP1DoX8MiuO7
  elements:
  - title: Marketo/Month-Email
    name: Marketo/Month-Email
    model: looker-poc
    explore: marketo
    type: looker_column
    fields: [marketo.date_month, sum_of_send_email, sum_of_email_delivered, sum_of_click_email]
    fill_fields: [marketo.date_month]
    filters: {}
    sorts: [marketo.date_month desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_send_email
      based_on: marketo.send_email
      expression: ''
      label: Sum of Send Email
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_email_delivered
      based_on: marketo.email_delivered
      expression: ''
      label: Sum of Email Delivered
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_click_email
      based_on: marketo.click_email
      expression: ''
      label: Sum of Click Email
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
      Ali Segment: marketo.ali_segment
      Brand: marketo.brand
      Business Unit: marketo.business_unit
      Campaign: marketo.campaign
      Campaign ID: marketo.campaign_id
      Campaign Type: marketo.campaign_type
      Country: marketo.country
      Device: marketo.device
      Marketing Opt Inon Form (Yes / No): marketo.marketing_opt_inon_form
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Marketo/Month-Email -Donut
    name: Marketo/Month-Email -Donut
    model: looker-poc
    explore: marketo
    type: looker_donut_multiples
    fields: [marketo.date_month, sum_of_send_email, sum_of_email_delivered, sum_of_click_email]
    fill_fields: [marketo.date_month]
    filters: {}
    sorts: [marketo.date_month desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_send_email
      based_on: marketo.send_email
      expression: ''
      label: Sum of Send Email
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_email_delivered
      based_on: marketo.email_delivered
      expression: ''
      label: Sum of Email Delivered
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_click_email
      based_on: marketo.click_email
      expression: ''
      label: Sum of Click Email
      type: sum
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
    value_labels: legend
    label_type: labPer
    listen:
      Ali Segment: marketo.ali_segment
      Brand: marketo.brand
      Business Unit: marketo.business_unit
      Campaign: marketo.campaign
      Campaign ID: marketo.campaign_id
      Campaign Type: marketo.campaign_type
      Country: marketo.country
      Device: marketo.device
      Marketing Opt Inon Form (Yes / No): marketo.marketing_opt_inon_form
    row: 12
    col: 0
    width: 24
    height: 12
  filters:
  - name: Business Unit
    title: Business Unit
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.business_unit
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
    explore: marketo
    listens_to_filters: []
    field: marketo.country
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
    explore: marketo
    listens_to_filters: []
    field: marketo.brand
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
    explore: marketo
    listens_to_filters: []
    field: marketo.campaign
  - name: Ali Segment
    title: Ali Segment
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.ali_segment
  - name: Campaign Type
    title: Campaign Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.campaign_type
  - name: Marketing Opt Inon Form (Yes / No)
    title: Marketing Opt Inon Form (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.marketing_opt_inon_form
  - name: Campaign ID
    title: Campaign ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.campaign_id
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker-poc
    explore: marketo
    listens_to_filters: []
    field: marketo.device
