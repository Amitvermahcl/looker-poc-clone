view: raw_sc_1 {
    derived_table: {
      sql: SELECT DISTINCT
                DATE AS format_date,
                --DEVICE AS device,
               -- 'searchconsole' AS source,
                CONCAT(UPPER(SUBSTR(DEVICE, 1, 1)), LOWER(SUBSTR(DEVICE, 2))) AS main_device,
                PROPERTY as PROPERTY,impressions, clicks, page,
                COUNT(PROPERTY) AS property_Cnt
              FROM `poc_data.searchconsole`
              WHERE DATE BETWEEN '2023-01-01' AND '2023-12-31'
              --AND DEVICE = "DESKTOP"
              GROUP BY
              format_date,main_device,PROPERTY,impressions, clicks, page ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: format_date {
      type: date
      datatype: date
      sql: ${TABLE}.format_date ;;
    }

    dimension: main_device {
      type: string
      sql: ${TABLE}.main_device ;;
    }

    dimension: property {
      type: string
      sql: ${TABLE}.PROPERTY ;;
    }

    dimension: impressions {
      type: number
      sql: ${TABLE}.impressions ;;
    }

    dimension: clicks {
      type: number
      sql: ${TABLE}.clicks ;;
    }

    dimension: page {
      type: string
      sql: ${TABLE}.page ;;
    }

    dimension: property_cnt {
      type: number
      sql: ${TABLE}.property_Cnt ;;
    }

    set: detail {
      fields: [
        format_date,
        main_device,
        property,
        impressions,
        clicks,
        page,
        property_cnt
      ]
    }
  }
