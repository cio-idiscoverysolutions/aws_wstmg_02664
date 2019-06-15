view: cdf_opus_master {
  sql_table_name: dbo.CDF_OPUS_Master ;;

  dimension_group: arrive_yard {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,day_of_week
    ]
    sql: ${TABLE}.ARRIVE_YARD ;;
  }

  dimension: conf_lunch_end {
    type: string
    sql: ${TABLE}.CONF_LUNCH_END ;;
  }

  dimension: conf_lunch_start {
    type: string
    sql: ${TABLE}.CONF_LUNCH_START ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}.DRIVER_ID ;;
  }

  dimension_group: driver_lunch_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,day_of_week
    ]
    sql: ${TABLE}.DRIVER_LUNCH_END ;;
  }

  dimension_group: driver_lunch_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,day_of_week
    ]
    sql: ${TABLE}.DRIVER_LUNCH_START ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}.DRIVER_NAME ;;
  }

  dimension_group: leave_yard {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,day_of_week
    ]
    sql: ${TABLE}.LEAVE_YARD ;;
  }

  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}.Route_ID ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.VEHICLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [driver_name]
  }
}
