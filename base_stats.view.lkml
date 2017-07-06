include: "base.view.lkml"

view: base_stats {
  extends: [base]
  extension: required

  dimension_group: date {
    hidden: yes
  }
  dimension: day_of_week {
    hidden: yes
  }
  dimension_group: month {
    hidden: yes
  }
  dimension: month_of_year {
    hidden: yes
  }
  dimension_group: quarter {
    hidden: yes
  }
  dimension_group: week {
    hidden: yes
  }
  dimension: year {
    hidden: yes
  }
}
