# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: search_term_sanitization_job_metadata_daily_last_updated {
  label: "search_term_sanitization_job_metadata_daily Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-shared-prod`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'search_terms_derived'
    AND table_name = 'sanitization_job_metadata_v2' ;;
  description: "Updates for search_term_sanitization_job_metadata_daily when moz-fx-data-shared-prod.search_terms_derived.sanitization_job_metadata_v2 is modified."
  max_cache_age: "24 hours"
}