view: marketo {
  sql_table_name: `poc_data.marketo` ;;

  dimension: ali_segment {
    type: string
    sql: ${TABLE}.ali_segment ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: business_unit {
    type: string
    sql: ${TABLE}.Business_Unit ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }
  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }
  dimension: click_email {
    type: number
    sql: ${TABLE}.click_email ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }
  dimension: email_delivered {
    type: number
    sql: ${TABLE}.email_delivered ;;
  }
  dimension: lead_id {
    type: number
    sql: ${TABLE}.leadId ;;
  }
  dimension: marketing_opt_inon_form {
    type: yesno
    sql: ${TABLE}.marketingOptInonForm ;;
  }
  dimension: marketo_guid {
    type: number
    value_format_name: id
    sql: ${TABLE}.marketoGUID ;;
  }
  dimension: optin {
    type: number
    sql: ${TABLE}.optin ;;
  }
  dimension: optin_brand_2 {
    type: string
    sql: ${TABLE}.optin_brand_2 ;;
  }
  dimension: optin_brand_3 {
    type: string
    sql: ${TABLE}.optin_brand_3 ;;
  }
  dimension: optin_brand_4 {
    type: string
    sql: ${TABLE}.optin_brand_4 ;;
  }
  dimension: optin_final {
    type: number
    sql: ${TABLE}.optin_final ;;
  }
  dimension: partition_name {
    type: string
    sql: ${TABLE}.Partition_Name ;;
  }
  dimension: primary_attribute_value {
    type: string
    sql: ${TABLE}.primaryAttributeValue ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension: send_email {
    type: number
    sql: ${TABLE}.send_email ;;
  }
  dimension: site_code {
    type: string
    sql: ${TABLE}.siteCode ;;
  }
  dimension: workspace {
    type: string
    sql: ${TABLE}.workspace ;;
  }
  measure: count {
    type: count
    drill_fields: [partition_name]
  }
 measure: email_click_rate {
  type: number
  sql: COUNTIF(click_email = 1) AS total_clicks,
  COUNTIF(email_delivered = 1) AS total_delivered,
  (COUNTIF(click_email = 1) / NULLIF(COUNTIF(email_delivered = 1), 0)) * 100 ;;
  value_format_name: "percent_2"
  label: "Email Click Rate"
}
}
