  view: marge_view {
    derived_table: {
      sql: WITH v_searchconsole AS (
          SELECT DISTINCT
          DATE AS format_date,
          --DEVICE AS device,
         -- 'searchconsole' AS source,
          CONCAT(UPPER(SUBSTR(DEVICE, 1, 1)), LOWER(SUBSTR(DEVICE, 2))) AS main_device,
          PROPERTY as PROPERTY,
          COUNT(PROPERTY) AS property_Cnt
        FROM `poc_data.searchconsole`
        WHERE DATE BETWEEN '2023-01-01' AND '2023-12-31'
        --AND DEVICE = "DESKTOP"
        GROUP BY
        format_date,main_device,PROPERTY
      ),
      v_GA AS (
      SELECT DISTINCT
         PARSE_DATE('%Y%m%d', DATE) AS raw_date,
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
        raw_date,main_device,Search_type
      )
      SELECT DISTINCT
        v_searchconsole.format_date AS date1,
        v_searchconsole.main_device AS main_device,
        v_searchconsole.property AS property,
        v_searchconsole.property_Cnt as Property_cnt,
        v_GA.Search_type AS Search_type,
        v_GA.search_typ_count AS Search_Cnt
      FROM v_searchconsole
      INNER JOIN v_GA
      --LEFT OUTER JOIN v_GA
      ON v_searchconsole.format_date = v_GA.raw_date;
      --AND v_searchconsole.main_device = v_GA.main_device ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: date1 {
      type: date
      datatype: date
      sql: ${TABLE}.date1 ;;
    }

    dimension: main_device {
      type: string
      sql: ${TABLE}.main_device ;;
    }

    dimension: property {
      type: string
      sql: ${TABLE}.property ;;
    }

    dimension: property_cnt {
      type: number
      sql: ${TABLE}.Property_cnt ;;
    }

    dimension: search_type {
      type: string
      sql: ${TABLE}.Search_type ;;
    }

    dimension: search_cnt {
      type: number
      sql: ${TABLE}.Search_Cnt ;;
    }

    set: detail {
      fields: [
        date1,
        main_device,
        property,
        property_cnt,
        search_type,
        search_cnt
      ]
    }
  }
