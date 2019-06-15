view: cdf_gpsidle_master {
  sql_table_name: dbo.CDF_GPSIdle_Master ;;

  dimension: alertcause {
    type: string
    sql: ${TABLE}.ALERTCAUSE ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}.Driver_ID ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}.Driver_Name ;;
  }

  dimension_group: idle_finished {
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
    sql: ${TABLE}.Idle_Finished ;;
  }

  dimension_group: idle_started {
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
    sql: ${TABLE}.Idle_Started ;;
  }


  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  dimension: lunch_end {
    type: string
    sql: ${TABLE}.Lunch_End ;;
  }

  dimension: lunch_start {
    type: string
    sql: ${TABLE}.Lunch_Start ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}.Route_ID ;;
  }

  dimension: service_date {
    type: string
    sql: ${TABLE}.Service_Date ;;
  }

  dimension: total_idle_time {
    type: string
    sql: ${TABLE}.Total_Idle_Time ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.Vehicle_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [driver_name]
  }
}
