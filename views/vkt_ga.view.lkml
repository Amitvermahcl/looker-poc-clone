view: vkt_ga {
  derived_table: {
    sql: SELECT DISTINCT
                     PARSE_DATE('%Y%m%d', DATE) AS raw_date,
                    sum(totals.bounces) as bounces,trafficSource.campaign,geoNetwork.country,trafficSource.medium, sum(totals.pageviews) as pageviews,trafficSource.source,sum(totals.visits) as visits,sum(totals.hits) as hits,
                     --DEVICE.DEVICECATEGORY AS device,
                    -- 'ga' AS source,
                     CONCAT(UPPER(SUBSTR(DEVICE.DEVICECATEGORY, 1, 1)), LOWER(SUBSTR(DEVICE.DEVICECATEGORY, 2))) AS main_device,
                     TRAFFICSOURCE.MEDIUM AS Search_type
                   FROM `poc_data.google_analytics_raw`
                  -- WHERE PARSE_DATE('%Y%m%d', DATE) BETWEEN '2023-11-01' AND '2023-12-31' and TRAFFICSOURCE.MEDIUM in ('paid','social_Organic_')
                   GROUP BY
                    geoNetwork.country,raw_date,main_device,Search_type,trafficSource.campaign,
                    trafficSource.medium,trafficSource.source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: raw_date {
    type: date
    datatype: date
    sql: ${TABLE}.raw_date ;;
  }

  measure: bounces {
    type: number
    sql: SUM(${TABLE}.bounces) ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  measure: pageviews {
    type: number
    sql: SUM (${TABLE}.pageviews) ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: visits {
    type: number
    sql: SUM(${TABLE}.visits) ;;
  }

  measure: hits {
    type: number
    sql: SUM(${TABLE}.hits) ;;
  }

  dimension: main_device {
    type: string
    sql: ${TABLE}.main_device ;;
  }

  dimension: search_type {
    type: string
    sql: ${TABLE}.Search_type ;;
  }

  set: detail {
    fields: [
      raw_date,

      campaign,
      country,
      medium,
      source,
      main_device,
      search_type
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

# view: vkt_ga {
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
