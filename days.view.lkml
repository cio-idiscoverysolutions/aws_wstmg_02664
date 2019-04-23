view: days {
  sql_table_name: dbo.Days ;;

  dimension_group: ddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ddate ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: wk_day {
    type: number
    sql: ${TABLE}.wkDay ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }
}
