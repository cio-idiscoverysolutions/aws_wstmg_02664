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
    drill_fields: [full_name,ddate_date,wk_day]
  }

  measure: wkDay {
    type: sum
    drill_fields: [full_name,ddate_date,wk_day]
  }

  measure: WkDay {
    type: average
    drill_fields: [full_name,ddate_date,wk_day]
  }

  dimension: hrsTier
  { type: number
    sql: ${TABLE}.hrsTier ;;}

  dimension: hrsLabel
  { type: string
    sql: ${TABLE}.hrsLabel ;;}
}
