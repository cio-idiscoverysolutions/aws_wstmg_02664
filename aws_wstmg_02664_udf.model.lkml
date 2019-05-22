connection: "aws_wstmg_02664_udf"

# include all the views
include: "*.view"

datagroup: aws_wstmg_02664_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_wstmg_02664_default_datagroup

explore: avg_daily_hours {}
explore: avg_weekly_hours {}
explore: days {}
explore: weeks {}
explore: kronos_breaks_taken {}
explore: test_gpson_break {}
explore: test_gpswhen_idle {}

explore: evt {}
explore: loc {}
explore: ppl {}
explore: cda {}

explore: i_ds_gps_data {}
explore: i_ds_gps_data_anchors_of_interest {}

explore: cda_results {
  join: cda{
    type: inner
    sql_on: ${cda.cda_id} = ${cda.cda_id};;
    relationship: many_to_one
    view_label: "CDA Results"

  }
}


explore: udf {
  label: "Universal Data Format"
  join: ppl{
    type: left_outer
    sql_on: ${udf.ppl_id} = ${ppl.ppl_id} ;;
    relationship: one_to_many
    view_label: "People"

  }

  join: loc{
    type: left_outer
    sql_on: ${udf.loc_id} = ${loc.loc_id} ;;
    relationship: one_to_many
    view_label: "Location"
  }
  join: evt{
    type: left_outer
    sql_on: ${udf.evt_id} = ${evt.evt_id} ;;
    relationship: one_to_many
    view_label: "Event"
  }
  join: src{
    type: left_outer
    sql_on: ${udf.src_id} = ${src.src_id} ;;
    relationship: one_to_many
  }
  join: cda_results{
    type: left_outer
    sql_on: ${udf.udf_id} = ${cda_results.udf_id} ;;
    relationship: many_to_many
  }
  join: cda{
    type: left_outer
    sql_on: ${udf.udf_id} = ${cda_results.udf_id} AND ${cda_results.cda_id} = ${cda.cda_id} ;;
    relationship: many_to_many
  }
}


#   joins:
#     - join: gps
#       type: left_outer
#       sql_on: ${gps.gps_id} = ${gps.pr_gps_id}
#       relationship: many_to_one


# - explore: anc

# - explore: anc_details
#   joins:
#     - join: anc
#       type: left_outer
#       sql_on: ${anc_details.anc_id} = ${anc.anc_id}
#       relationship: many_to_one

#     - join: gps
#       type: left_outer
#       sql_on: ${anc_details.gps_id} = ${gps.pr_gps_id}
#       relationship: many_to_one
