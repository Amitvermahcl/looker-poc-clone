view: solidus {
  sql_table_name: `poc_data.solidus` ;;

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }
  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }
  dimension: fullcan_lines {
    type: number
    sql: ${TABLE}.Fullcan_Lines ;;
  }
  dimension: fullcan_quantity {
    type: number
    sql: ${TABLE}.Fullcan_Quantity ;;
  }
  dimension: fullcan_value {
    type: number
    sql: ${TABLE}.Fullcan_Value ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }
  dimension: other_lines {
    type: number
    sql: ${TABLE}.Other_Lines ;;
  }
  dimension: other_quantity {
    type: number
    sql: ${TABLE}.Other_Quantity ;;
  }
  dimension: other_value {
    type: number
    sql: ${TABLE}.Other_Value ;;
  }
  dimension_group: scrape {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scrape_date ;;
  }
  dimension: store_code {
    type: string
    sql: ${TABLE}.Store_code ;;
  }
  dimension: tester_lines {
    type: number
    sql: ${TABLE}.Tester_Lines ;;
  }
  dimension: tester_quantity {
    type: number
    sql: ${TABLE}.Tester_Quantity ;;
  }
  dimension: tester_value {
    type: number
    sql: ${TABLE}.Tester_Value ;;
  }
  dimension: total_adjustments {
    type: number
    sql: ${TABLE}.Total_Adjustments ;;
  }
  dimension: total_item_value {
    type: number
    sql: ${TABLE}.Total_Item_Value ;;
  }
  dimension: total_lines {
    type: number
    sql: ${TABLE}.Total_Lines ;;
  }
  dimension: total_orders {
    type: number
    sql: ${TABLE}.Total_Orders ;;
  }
  dimension: total_quantity {
    type: number
    sql: ${TABLE}.Total_Quantity ;;
  }
  dimension: total_shipping {
    type: number
    sql: ${TABLE}.Total_Shipping ;;
  }
  dimension: total_value {
    type: number
    sql: ${TABLE}.Total_Value ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
}
