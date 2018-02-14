### What does this Block do for me?

**(1) Combine Multiple Data Sources** - Combine your AdWords data with data from GA, DoubleClick, Facebook Ads, Salesforce, and more to get a holistic view of all your customer data in one central view (see bottom of this page for instructions).

**(2) Replicate Existing AdWords Reports + More** - Replicate all your existing AdWords reports and dashboards in a matter of minutes or hours to make the switch to Looker seamless. Plus, enjoy all the additional value-add analysis that comes turney with this plug-and-play model and dashboards. Time-to-value for a new data tool has never been quicker.

**(3) Enterprise Data Platform** - Take advantage of Looker's data platform functionality, including [data actions](https://discourse.looker.com/t/data-actions/3573), scheduling, permissions, alerting, parameterization (each user can only see their own data), and more. Get immediate alerts when budgets are exceeded, ads are underperforming, or any other business criteria.

**(4) Usable / Shareable Dashboards** - create centralized dashboards for the entire team, and departmental or individual dashboards for each user, and rest easy knowing everyone is looking at the same information at all times. Then schedule the dashboard for emails or alerts, period-end reporting, anomaly detection, or whatever else serves your use-case.

**(5) Expertise** - Leverage analytics expertise of Looker + AdWords product teams, who assembled this Block based on years of AdWords experience with industry-leading companies.


### Block Info

This Block is modeled on the schema brough in by Google's [BigQuery Transfer Service](https://cloud.google.com/bigquery/transfer/). It will cover many of the core entities involved with the DoubleClick for Publishers offering. Depending on how you use the DFP service, you may have additional entities brought in through thge BQ Transfer Service, especially any custom built reports. This Block should serve as a great jump start. Happy modeling!

The schema documentation for AdWords can be found in [Google's docs](https://developers.google.com/adwords/api/docs/appendix/reports). Please note that your naming might vary slightly.


### Google AdWords Raw Data Structure

* **Entity Tables and Stats Tables** - There are several primary entities included in the AdWords data set, such as ad, ad group, campaign, customer, keyword, etc.. Each of these tables has a corresponding "Stats" table, which includes all the various metrics for that entity. For example, the "campaign" entity table contains attributes for each campaign, such as the campaign name and campaign status. The corresponding stats table - "Campaign Basic Stats" contains metrics such as impressions, clicks, and conversions.

* **Snapshots** - AdWords tables keep records over time by snapshotting all data at the end of each day. The following day, a new snapshot is taken, and appended to the table. There are two columns on each table: `_DATA_DATE` and `_LATEST_DATE`. `_DATA_DATE` tells you the day the data was recorded, while `_LATEST_DATE` is a **mutable** field that tells you the most recent date a snapshot was taken. Querying the table using `_DATA_DATE` = `_LATEST_DATE` in the `WHERE` clause would give you only the data for the latest day.


### Block Structure

* **Entity Base** - This file contains all the common entity tables found across all AdWords deployments. If you have additional entities you'd like to include, simply bring them into the Looker and model them the same way. Full documentation on each entity table and each metric can be found in [Google's documentation](https://developers.google.com/adwords/api/docs/appendix/reports).

* **Master Basic Stats** - This file contains all the metrics (measures / aggregations) for each corresponding entity. Because AdWords data exports were built with the intention of one-off reporting, rather than data modeling, we utilize Lookers `in_query` function (Looker's approach to Aggregate Awareness) to tell Looker which table to query based on the dimensions and measures selected when exploring or viewing a dashboard. This allow us to optimize performance and leverage BigQuery's speed while still maintaining a robust, central data model. More detail on the `in_query` function can be found in [Looker's documentation](https://discourse.looker.com/t/aggregate-awareness-using--in-query/6439).

* **Base Quarter Stats** - Many customers prefer to view AdWords data at the quarterly level to gauge performance and, more importantly, understand budget implicications. This file contains several quarterly overviews to help users analyze performance and budget spend at the quarter interval.

* **Model File and Joins** - Since all tables are snapshotted and appended each day, you'll notice that in our model file, all of our join logic is based on two conditions: on the common key, and on the date. This ensures that we never double count or misaggregate any calculations. Modifying these joins will break the aggregations. Any additional table that's joined should follow the same logic.


### Implementation Instructions / Required Customizations

* **sql_table_name** - in each of the views, the `sql_table_name` parameter must be changed to match your table names. This is easily accomplished using a global Find & Replace (available in the top right of your screen)

* **Dashboards** - rename the model in each LookML Dashboard element from "google_adwords" to the model name you've selected. We also recommend using a global Find & Replace for this.

### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommentation, simply create a "New Issue" in the corresponding [Github repo for this Block](https://github.com/llooker/google_adwords/issues). Please be as detailed as possible in your explanation, and we'll address it as quick as we can.

### Reporting Schema Layout


![image](https://cloud.githubusercontent.com/assets/9888083/26472690/18f621d0-415c-11e7-85fc-e77334847757.png)
