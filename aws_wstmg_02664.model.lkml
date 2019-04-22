connection: "aws_wstmg_02664_udf"

# include all the views
include: "*.view"

datagroup: aws_wstmg_02664_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_wstmg_02664_default_datagroup

explore: gps {}

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
