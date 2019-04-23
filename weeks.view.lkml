view: weeks {
  sql_table_name: dbo.Weeks ;;

  dimension_group: ddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ddate ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: wk_day {
    type: number
    sql: ${TABLE}.WkDay ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }

  measure: wkDay {
    type: sum
    drill_fields: [full_name]
  }
}
