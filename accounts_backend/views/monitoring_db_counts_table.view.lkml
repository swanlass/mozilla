
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: monitoring_db_counts_table {
  dimension: table_name {
    sql: ${TABLE}.table_name ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: total_rows {
    sql: ${TABLE}.total_rows ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension_group: as_of {
    sql: ${TABLE}.as_of_date ;;
    type: time
    suggest_persist_for: "24 hours"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
  }

  sql_table_name: `mozdata.accounts_backend.monitoring_db_counts` ;;
}