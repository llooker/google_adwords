view: base {
  extension: required

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
}
