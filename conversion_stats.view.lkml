include: "base.view.lkml"

view: conversion_stats {
  extends: [base]
  extension: required

  measure: total_conversions {
    type: sum
    sql: ${conversions} ;;
    value_format_name: decimal_0
  }
}
