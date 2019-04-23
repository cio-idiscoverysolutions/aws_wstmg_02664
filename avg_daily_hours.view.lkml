view: avg_daily_hours {
  sql_table_name: dbo.AvgDailyHours ;;

  dimension: avg_daily_hour {
    type: number
    sql: ${TABLE}.AvgDailyHour ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
