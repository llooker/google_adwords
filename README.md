### Block Info

_This Block is modeled on the schema brough in by Google's BigQuery Transfer Service. It will cover many of the core entities involved with the AdWords offering. Depending on how you use the DFP service, you may have additional entities brought in through thge BQ Transfer Service, especially any custom built reports. This Block should serve as a great jump start. Happy modeling!_

_The schema documentation for AdWords can be found in [Google's docs](https://developers.google.com/adwords/api/docs/guides/reporting#xml_schema_definition). Please note that your naming might vary slightly._

### Notes

* **sql_table_name** - in each of the views, the `sql_table_name` parameter must be changed to match your table names, particularly the tables with a wildcard operator when using `_table_suffix`
* **base tables** - the tables with the "stats" suffix contain snapshot data by day, compiled into a large table. The values in these tables can be aggregated over time. These serve as our left-most tables, or "base tables", which we join our other tables onto with `many_to_one_joins`. The non-base tables are also running state tables, but with data that cannot be aggregated over time. We restrict these tables using a `_latest_date = data_date` parameter in the `sql_table_name` clause.
