view: test_gpswhen_idle {
  sql_table_name: dbo.Test_GPSWhenIdle ;;

  dimension: driver_name {
    type: string
    sql: ${TABLE}.driver_name ;;
  }

  dimension: idle_finished {
    type: string
    sql: ${TABLE}.Idle_Finished ;;
  }

  dimension: idle_started {
    type: string
    sql: ${TABLE}.Idle_Started ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  measure: count {
    type: count
    drill_fields: [driver_name]
  }
}
