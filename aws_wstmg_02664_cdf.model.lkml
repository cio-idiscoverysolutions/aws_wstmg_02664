connection: "aws_wstmg_02664_cdf"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: cdf_stats {}
explore: table_stats {}
explore: custodian_counts {}
explore: cdf_gpsidle_master {}
explore: cdf_gpsping_master {}
explore: cdf_opus_master {}
explore: cdf_kronos_master {}
