view: entity_base {
  extension: required

  dimension_group: _latest {
    hidden: yes
  }

  dimension: latest {
    type: yesno
    sql: ${TABLE}._DATA_DATE = ${TABLE}._LATEST_DATE ;;
  }
}
