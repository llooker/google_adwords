include: "entity_base.view.lkml"

view: customer {
  extends: [entity_base]
  sql_table_name: adwords_v201609.Customer_6747157124 ;;

  dimension_group: _data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
  }

  dimension_group: _latest {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: account_currency_code {
    type: string
    sql: ${TABLE}.AccountCurrencyCode ;;
  }

  dimension: account_descriptive_name {
    type: string
    sql: ${TABLE}.AccountDescriptiveName ;;
  }

  dimension: account_time_zone_id {
    type: string
    sql: ${TABLE}.AccountTimeZoneId ;;
  }

  dimension: can_manage_clients {
    type: yesno
    sql: ${TABLE}.CanManageClients ;;
  }

  dimension: customer_descriptive_name {
    type: string
    sql: ${TABLE}.CustomerDescriptiveName ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: is_auto_tagging_enabled {
    type: yesno
    sql: ${TABLE}.IsAutoTaggingEnabled ;;
  }

  dimension: is_test_account {
    type: yesno
    sql: ${TABLE}.IsTestAccount ;;
  }

  dimension: primary_company_name {
    type: string
    sql: ${TABLE}.PrimaryCompanyName ;;
  }

  measure: count {
    type: count
    drill_fields: [account_descriptive_name, customer_descriptive_name, primary_company_name]
  }
}
