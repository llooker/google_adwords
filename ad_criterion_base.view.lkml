view: ad_criterion_base {
  extension: required

  dimension: unique_key {
    type:  string
    hidden: yes
    sql: CONCAT(CAST(${ad_group_id} AS STRING),CAST(${criterion_id} AS STRING)) ;;
  }
}
