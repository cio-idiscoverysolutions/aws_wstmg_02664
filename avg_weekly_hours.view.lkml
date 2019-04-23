view: avg_weekly_hours {
  sql_table_name: dbo.AvgWeeklyHours ;;

  dimension: avg_week {
    type: number
    sql: ${TABLE}.AvgWeek ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
