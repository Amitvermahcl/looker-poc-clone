view: vkt_sc {
  derived_table: {
    sql: SELECT DISTINCT
                      CONCAT(UPPER(SUBSTR(DEVICE, 1, 1)), LOWER(SUBSTR(DEVICE, 2))) AS main_device,
                      country,
                      DATE AS format_date,
                      --DEVICE AS device,
                     -- 'searchconsole' AS source,
                      PROPERTY as PROPERTY,sum(impressions) as impressions,
                      sum(clicks) as clicks,sum(ctr) as ctr
                      --COUNT(PROPERTY) AS property_Cnt
                    FROM `poc_data.searchconsole`
                   -- WHERE DATE BETWEEN '2023-11-01' AND '2023-12-31'
                    --AND DEVICE = "DESKTOP"
                    GROUP BY
                    country,main_device,format_date,PROPERTY ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: main_device {
    type: string
    sql: ${TABLE}.main_device ;;
  }
  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }
  dimension: format_date {
    type: date
    datatype: date
    sql: ${TABLE}.format_date ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.PROPERTY ;;
  }

  measure: impressions {
    type: number
    sql:  SUM(${TABLE}.impressions) ;;
  }

  measure: clicks {
    type: number
    sql: SUM(${TABLE}.clicks) ;;
  }

  measure: ctr {
    type: number
    sql: SUM(${TABLE}.ctr) ;;
  }

  set: detail {
    fields: [
      main_device,
      country,
      format_date,
      property

    ]
  }

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: vkt_sc {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
