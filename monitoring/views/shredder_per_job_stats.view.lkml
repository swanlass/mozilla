
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: shredder_per_job_stats {
  dimension: avg_slots {
    sql: ${TABLE}.avg_slots ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: deleted_row_count {
    sql: ${TABLE}.deleted_row_count ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: error_message {
    sql: ${TABLE}.error_message ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: error_reason {
    sql: ${TABLE}.error_reason ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: job_id {
    sql: ${TABLE}.job_id ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: parent_task_id {
    sql: ${TABLE}.parent_task_id ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: partition_id {
    sql: ${TABLE}.partition_id ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: run_time_minutes {
    sql: ${TABLE}.run_time_minutes ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: shredded_sample_id {
    sql: ${TABLE}.shredded_sample_id ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: slot_hours {
    sql: ${TABLE}.slot_hours ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: task_id {
    sql: ${TABLE}.task_id ;;
    type: string
    suggest_persist_for: "24 hours"
  }

  dimension: tib_processed {
    sql: ${TABLE}.tib_processed ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: total_bytes_processed {
    sql: ${TABLE}.total_bytes_processed ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension: total_slot_ms {
    sql: ${TABLE}.total_slot_ms ;;
    type: number
    suggest_persist_for: "24 hours"
  }

  dimension_group: end {
    sql: ${TABLE}.end_time ;;
    type: time
    suggest_persist_for: "24 hours"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  dimension_group: partition {
    sql: ${TABLE}.partition_date ;;
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

  dimension_group: shredder_run {
    sql: ${TABLE}.shredder_run_date ;;
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

  dimension_group: start {
    sql: ${TABLE}.start_time ;;
    type: time
    suggest_persist_for: "24 hours"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  sql_table_name: `mozdata.monitoring.shredder_per_job_stats` ;;
}