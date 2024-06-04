
view: raw_ga_1 {
  derived_table: {
    sql: SELECT DISTINCT
               PARSE_DATE('%Y%m%d', DATE) AS raw_date,
              totals.bounces,trafficSource.campaign,geoNetwork.country,trafficSource.medium, totals.pageviews,trafficSource.source,totals.visits,
               --DEVICE.DEVICECATEGORY AS device,
              -- 'ga' AS source,
               CONCAT(UPPER(SUBSTR(DEVICE.DEVICECATEGORY, 1, 1)), LOWER(SUBSTR(DEVICE.DEVICECATEGORY, 2))) AS main_device,
               TRAFFICSOURCE.MEDIUM AS Search_type,
               count(TRAFFICSOURCE.MEDIUM) as search_typ_count
             FROM `poc_data.google_analytics_raw`
             WHERE PARSE_DATE('%Y%m%d', DATE) BETWEEN '2023-01-01' AND '2023-12-31'
             --AND
             --DEVICE.DEVICECATEGORY = "desktop"
              GROUP BY
              raw_date,main_device,Search_type,totals.bounces,trafficSource.campaign,geoNetwork.country,totals.hits,
              trafficSource.medium, totals.pageviews, trafficSource.source, totals.visits ;;
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

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
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

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  dimension: main_device {
    type: string
    sql: ${TABLE}.main_device ;;
  }

  dimension: search_type {
    type: string
    sql: ${TABLE}.Search_type ;;
  }

  dimension: search_typ_count {
    type: number
    sql: ${TABLE}.search_typ_count ;;
  }

  set: detail {
    fields: [
      raw_date,
      bounces,
      campaign,
      country,
      medium,
      pageviews,
      source,
      visits,
      main_device,
      search_type,
      search_typ_count
    ]
  }
}
