view: google_analytics_raw {
  sql_table_name: `poc_data.google_analytics_raw` ;;

   dimension: bounces {
    type: number
    sql: ${TABLE}.totals.bounces ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }
  dimension: buy_intention {
    type: number
    sql: ${TABLE}.buy_intention ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: coatings_bu {
    type: string
    sql: ${TABLE}.Coatings_BU ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: country_path {
    type: string
    sql: ${TABLE}.country_path ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: device_category {
    type: string
    sql: ${TABLE}.deviceCategory ;;
  }
  dimension: event_action {
    type: string
    sql: ${TABLE}.eventAction ;;
  }
  dimension: event_category {
    type: string
    sql: ${TABLE}.eventCategory ;;
  }
  dimension: event_label {
    type: string
    sql: ${TABLE}.eventLabel ;;
  }
  dimension: extra_bu {
    type: string
    sql: ${TABLE}.extra_bu ;;
  }
  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }
  dimension: ga_url {
    type: string
    sql: ${TABLE}.ga_url ;;
  }
  dimension: hit_type {
    type: string
    sql: ${TABLE}.hit_type ;;
  }
  dimension: hitnumber {
    type: number
    sql: ${TABLE}.hitnumber ;;
  }
  dimension: hits {
    type: number
    sql: ${TABLE}.hits ;;
  }
  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }
  dimension: market_id {
    type: string
    sql: ${TABLE}.market_id ;;
  }
  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }
  dimension: name_modified {
    type: string
    sql: ${TABLE}.name_modified ;;
  }
  dimension: name_nixon {
    type: string
    sql: ${TABLE}.name_nixon ;;
  }
  dimension: new_bu {
    type: string
    sql: ${TABLE}.new_bu ;;
  }
  dimension: nixon_bu {
    type: string
    sql: ${TABLE}.nixon_bu ;;
  }
  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: time_on_site {
    type: number
    sql: ${TABLE}.timeOnSite ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }
  dimension: transactionrevenue {
    type: number
    sql: ${TABLE}.transactionrevenue ;;
  }
  dimension: user_country {
    type: string
    sql: ${TABLE}.user_country ;;
  }
  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }
  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }
  measure: count {
    type: count
    drill_fields: [hostname]
  }
  measure: total_bounces {
    type: sum
    sql: ${TABLE}.totals.bounces ;;
    # Optional label for the measure
    description: "Total Bounces"
  }
}
