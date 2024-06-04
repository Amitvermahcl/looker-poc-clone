view: searchconsole {
  sql_table_name: `poc_data.searchconsole` ;;

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
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
  dimension: impressions {
    hidden: no
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }
  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }
  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
  }
  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }
  dimension: searchtype {
    type: string
    sql: ${TABLE}.searchtype ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count

  }
  measure: count_impressions_avg {
    type: average
    sql: ${TABLE}.impressions ;;
  }
  measure: count_impressions_sum {
    type: sum
    sql: ${TABLE}.impressions ;;
  }
}
