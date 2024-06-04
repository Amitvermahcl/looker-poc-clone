connection: "looker_poc_data"

# include all the views
include: "/views/**/*.view.lkml"

#persist_with "looker-poc_default_datagroup" declared, but that datagroup is not included in model "looker-poc".

datagroup: looker_poc_default_datagroup {

  sql_trigger: select current_date() ;;

  max_cache_age: "24 hours"

}
# datagroup: looker-poc_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: looker-poc_default_datagroup

explore: searchconsole {}
explore: vkt_ga {}
explore: vkt_sc {}

explore:  vkt_ga_sc {
  view_name: vkt_ga
  join: vkt_sc {
    type: inner
    relationship: one_to_one
    sql_on: ${vkt_ga.raw_date} = ${vkt_sc.format_date} and
    ${vkt_ga.main_device} = ${vkt_sc.main_device} ;;

  }

}

explore: web_mapping {}

explore: google_analytics {}

explore: google_analytics_raw {}

explore: solidus {}

explore: marketo {}

explore: marge_view {}

explore: google_analytics_view12  {
  view_name: google_analytics_view1
}

explore: raw_ga_1{}
explore: raw_sc_1{}
explore:  co_ga_sc {
  view_name: raw_ga_1
  join: raw_sc_1 {
    type: inner
    relationship: one_to_one
    sql_on: ${raw_sc_1.format_date} = ${raw_ga_1.raw_date} and ${raw_sc_1.main_device} = ${raw_ga_1.main_device}  ;;
  }

}

explore: google_analytics_and_marketo {

  view_name: google_analytics
  join: marketo {
    type: full_outer
    relationship: many_to_many
    sql_on: ${google_analytics.campaign} = ${marketo.campaign} ;;

  }
  # view_name: google_analytics
  # join: searchconsole {
  #   type: inner
  #   relationship: one_to_many
  # sql_on: ${google_analytics.date_date} = ${searchconsole.date_date} ;;

  # }
  # join: google_analytics_raw {
  #   type: inner
  #   relationship: one_to_many
  #   sql_on: ${google_analytics.date_date} = ${google_analytics_raw.date_date};;
  # }
  # join: marketo {
  #   type: inner
  #   relationship: one_to_many
  #   sql_on: ${google_analytics.date_date}= ${marketo.date_date} ;;
  #   }
}
# explore: ga_marketo_searchconsole {}
#   join: date {
#     type: full_outer
#     relationship: many_to_many
#     sql_on: ${google_analytics.date} = ${marketo.date};;
#   }
# }
