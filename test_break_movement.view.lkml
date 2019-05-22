view: test_break_movement {
  sql_table_name: dbo.Test_BreakMovement ;;

  dimension_group: break_day {
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
    sql: ${TABLE}.breakDay ;;
  }

  dimension: break_duration {
    type: number
    sql: ${TABLE}.breakDuration ;;
  }

  dimension: movement_duration {
    type: number
    sql: ${TABLE}.movementDuration ;;
  }

  dimension: start_lat {
    type: number
    sql: ${TABLE}.startLat ;;
  }

  dimension: start_lon {
    type: number
    sql: ${TABLE}.startLon ;;
  }

  dimension: stop_lat {
    type: number
    sql: ${TABLE}.StopLat ;;
  }

  dimension: stop_lon {
    type: number
    sql: ${TABLE}.StopLon ;;
  }

  dimension: start {
    type:  location
    sql_latitude: ${start_lat} ;;
    sql_longitude: $(${start_lon} ;;
  }

  dimension: stop {
    type:  location
    sql_latitude: ${stop_lat} ;;
    sql_longitude: $(${stop_lon} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
