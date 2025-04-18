# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: cohort_daily_statistics_last_updated {
  label: "cohort_daily_statistics Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-shared-prod`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'telemetry_derived'
    AND table_name = 'cohort_daily_statistics_v2' ;;
  description: "Updates for cohort_daily_statistics when moz-fx-data-shared-prod.telemetry_derived.cohort_daily_statistics_v2 is modified."
  max_cache_age: "24 hours"
}