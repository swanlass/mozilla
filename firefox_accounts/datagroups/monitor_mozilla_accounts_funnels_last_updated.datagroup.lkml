# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: monitor_mozilla_accounts_funnels_last_updated {
  label: "monitor_mozilla_accounts_funnels Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-shared-prod`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'accounts_frontend_derived'
    AND table_name = 'monitor_mozilla_accounts_funnels_v1' ;;
  description: "Updates for monitor_mozilla_accounts_funnels when moz-fx-data-shared-prod.accounts_frontend_derived.monitor_mozilla_accounts_funnels_v1 is modified."
  max_cache_age: "24 hours"
}