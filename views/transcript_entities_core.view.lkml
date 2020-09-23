include: "//@{CONFIG_PROJECT_NAME}/views/transcript_entities.view.lkml"


view: transcript_entities {
  extends: [transcript_entities_config]
}

###################################################

view: transcript_entities_core {
  sql_table_name: `@{DATASET_NAME}.@{TRANSCRIPT_TABLE_NAME}_*` ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sentiment {
    type: number
    sql: ${TABLE}.sentiment ;;
  }

  measure: average_sentiment {
    type: average
    sql:  ${sentiment}  ;;
    value_format_name: decimal_1
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}
