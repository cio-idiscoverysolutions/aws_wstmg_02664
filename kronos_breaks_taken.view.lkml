view: kronos_breaks_taken {
  sql_table_name: dbo.KronosBreaksTaken ;;

  dimension: actual_state {
    type: string
    sql: ${TABLE}.ACTUAL_STATE ;;
  }

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }

  dimension: canceldeductsw {
    type: string
    sql: ${TABLE}.CANCELDEDUCTSW ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: enteredondtm {
    type: string
    sql: ${TABLE}.ENTEREDONDTM ;;
  }

  dimension: eventdate {
    type: string
    sql: ${TABLE}.EVENTDATE ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}.HOURS ;;
  }

  dimension_group: ids_date_loaded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.IDS_DateLoaded ;;
  }

  dimension: ids_dlvry_id {
    type: number
    sql: ${TABLE}.IDS_DLVRY_ID ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }


  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: in_punch_deduct_rule_name {
    type: string
    sql: ${TABLE}.InPunchDeductRuleName ;;
  }

  dimension: inpunch_rounded {
    type: string
    sql: ${TABLE}.INPunchRounded ;;
  }

  dimension: inpunchactual {
    type: string
    sql: ${TABLE}.INPUNCHActual ;;
  }

  dimension: inpunchcomment {
    type: string
    sql: ${TABLE}.INPUNCHCOMMENT ;;
  }

  dimension: inpunchlunchdeductcancel {
    type: string
    sql: ${TABLE}.INPUNCHLUNCHDEDUCTCANCEL ;;
  }

  dimension: inpunchusername {
    type: string
    sql: ${TABLE}.INPUNCHUSERNAME ;;
  }

  dimension: nonpunchcomment {
    type: string
    sql: ${TABLE}.NONPUNCHCOMMENT ;;
  }

  dimension: nonpunchusername {
    type: string
    sql: ${TABLE}.NONPUNCHUSERNAME ;;
  }

  dimension: orgpathdsctxt {
    type: string
    sql: ${TABLE}.ORGPATHDSCTXT ;;
  }

  dimension: orgpathtxt {
    type: string
    sql: ${TABLE}.ORGPATHTXT ;;
  }

  dimension: out_punch_deduct_rule_name {
    type: string
    sql: ${TABLE}.OutPunchDeductRuleName ;;
  }

  dimension: out_punch_rounded {
    type: string
    sql: ${TABLE}.OutPunchRounded ;;
  }

  dimension: outpunchactual {
    type: string
    sql: ${TABLE}.OUTPUNCHActual ;;
  }

  dimension: outpunchcomment {
    type: string
    sql: ${TABLE}.OUTPUNCHCOMMENT ;;
  }

  dimension: outpuncheventid {
    type: string
    sql: ${TABLE}.OUTPUNCHEVENTID ;;
  }

  dimension: outpunchlunchdeductcancel {
    type: string
    sql: ${TABLE}.OUTPUNCHLUNCHDEDUCTCANCEL ;;
  }

  dimension: outpunchusername {
    type: string
    sql: ${TABLE}.OUTPUNCHUSERNAME ;;
  }

  dimension: paycodename {
    type: string
    sql: ${TABLE}.PAYCODENAME ;;
  }

  dimension: personfullname {
    type: string
    sql: ${TABLE}.PERSONFULLNAME ;;
  }

  dimension: personnum {
    type: string
    sql: ${TABLE}.PERSONNUM ;;
  }

  dimension: supervisor_id {
    type: string
    sql: ${TABLE}.SupervisorID ;;
  }

  dimension: supervisor_nm {
    type: string
    sql: ${TABLE}.SupervisorNM ;;
  }

  dimension: workrulename {
    type: string
    sql: ${TABLE}.WORKRULENAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      personfullname,
      workrulename,
      inpunchusername,
      in_punch_deduct_rule_name,
      outpunchusername,
      out_punch_deduct_rule_name,
      paycodename,
      nonpunchusername
    ]
  }
}
