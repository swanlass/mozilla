# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: funnel_retention_week_4_table_last_updated {
  label: "funnel_retention_week_4_table Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-shared-prod`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'firefox_ios_derived'
    AND table_name = 'funnel_retention_week_4_v1' ;;
  description: "Updates for funnel_retention_week_4_table when moz-fx-data-shared-prod.firefox_ios_derived.funnel_retention_week_4_v1 is modified."
  max_cache_age: "24 hours"
}