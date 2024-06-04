view: web_mapping {
  sql_table_name: `poc_data.web_mapping` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
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
  dimension: extra_bu {
    type: string
    sql: ${TABLE}.extra_bu ;;
  }
  dimension: ga_url {
    type: string
    sql: ${TABLE}.ga_url ;;
  }
  dimension: market_id {
    type: string
    sql: ${TABLE}.market_id ;;
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
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  measure: count {
    type: count
  }
}
