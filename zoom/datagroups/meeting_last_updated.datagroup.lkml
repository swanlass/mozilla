# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: meeting_last_updated {
  label: "meeting Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-bq-fivetran`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'zoom'
    AND table_name = 'meeting' ;;
  description: "Updates when moz-fx-data-bq-fivetran.zoom.meeting is modified."
  max_cache_age: "24 hours"
}