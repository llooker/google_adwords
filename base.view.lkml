include: "entity_base.view.lkml"

view: base {
  extends: [entity_base]
  extension: required

  dimension: _data_day_of_quarter {
    group_label: "Data Date"
    label: "Day of Quarter"
    type: number
    sql: DATE_DIFF(
           ${_data_date},
          CAST(CONCAT(${_data_quarter}, '-01') as DATE),
          day) + 1
       ;;
  }

  dimension: _data_next_quarter {
    type: date
    sql: DATE_ADD(CAST(CONCAT(${_data_quarter}, '-01') as DATE), INTERVAL 1 QUARTER) ;;
  }

  dimension:  _data_days_in_quarter {
    type: number
    sql: DATE_DIFF(
           ${_data_next_quarter},
           CAST(CONCAT(${_data_quarter}, '-01') as DATE),
           day) ;;
  }

  measure: _data_max_day_of_week_index {
    type: max
    sql: ${_data_day_of_week_index} ;;
  }

  measure: _data_max_day_of_month {
    type: max
    sql: ${_data_day_of_month} ;;
  }

  measure: _data_max_day_of_quarter {
    type: max
    sql: ${_data_day_of_quarter} ;;
  }

  measure: _data_max_day_of_year {
    type: max
    sql: ${_data_day_of_year} ;;
  }

  dimension: ad_network_type1 {
    hidden: yes
  }

  dimension: ad_network_type2 {
    hidden: yes
  }

  dimension: ad_network_type {
    type: string
    sql: CASE
      WHEN ${ad_network_type1} = 'SHASTA_AD_NETWORK_TYPE_1_SEARCH' AND ${ad_network_type2} = 'SHASTA_AD_NETWORK_TYPE_2_SEARCH'
        THEN 'Search'
      WHEN ${ad_network_type1} = 'SHASTA_AD_NETWORK_TYPE_1_SEARCH' AND ${ad_network_type2} = 'SHASTA_AD_NETWORK_TYPE_2_SEARCH_PARTNERS'
        THEN 'Search Partners'
      WHEN ${ad_network_type1} = 'SHASTA_AD_NETWORK_TYPE_1_CONTENT'
        THEN 'Content'
      ELSE 'Other'
      END
      ;;
  }

  dimension: device {
    hidden: yes
  }

  dimension: device_type {
    type: string
    sql:  CASE
      WHEN ${device} LIKE '%Desktop%' THEN "Desktop"
      WHEN ${device} LIKE '%Mobile%' THEN "Mobile"
      WHEN ${device} LIKE '%Tablet%' THEN "Tablet"
      ELSE "Unknown" END;;
  }
}
