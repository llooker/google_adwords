view: entity_base {
  extension: required

  dimension_group: _data {
    description: "Filter on this field to limit query to a specified date range"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year
    ]
    convert_tz: no
    sql: TIMESTAMP(${_data}) ;;
  }

  dimension: _latest {
    hidden: yes
  }

  dimension: latest {
    type: yesno
    sql: ${TABLE}._DATA_DATE = ${TABLE}._LATEST_DATE ;;
  }
}
