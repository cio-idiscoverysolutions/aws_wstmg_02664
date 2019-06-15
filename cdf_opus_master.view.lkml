view: cdf_opus_master {
  sql_table_name: dbo.CDF_OPUS_Master ;;

  dimension: arrive_yard {
    type: string
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

  dimension: driver_lunch_end {
    type: string
    sql: ${TABLE}.DRIVER_LUNCH_END ;;
  }

  dimension: driver_lunch_start {
    type: string
    sql: ${TABLE}.DRIVER_LUNCH_START ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}.DRIVER_NAME ;;
  }

  dimension: leave_yard {
    type: string
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
