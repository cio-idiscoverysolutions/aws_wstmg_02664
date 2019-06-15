view: cdf_gpsping_master {
  sql_table_name: dbo.CDF_GPSPing_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}.DRIVER_ID ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}.DRIVER_NAME ;;
  }

  dimension: gpstime {
    type: string
    sql: ${TABLE}.GPSTIME ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}.ROUTE_ID ;;
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
