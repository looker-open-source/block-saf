include: "//@{CONFIG_PROJECT_NAME}/views/transcript_words.view.lkml"


view: transcript_words {
  extends: [transcripts_words_config]
}

###################################################

view: transcript_words_core {
  sql_table_name: @{DATASET_NAME}.insights_data_* ;;

    dimension: confidence {
      type: number
      sql: ${TABLE}.confidence ;;
    }

    dimension: end_secs {
      type: number
      sql: ${TABLE}.endSecs ;;
    }

    dimension: speakertag {
      type: number
      sql: ${TABLE}.speakertag ;;
    }

    dimension: start_secs {
      type: number
      sql: ${TABLE}.startSecs ;;
    }

    dimension: word {
      primary_key: yes
      type: string
      sql: ${TABLE}.word ;;
    }
    measure: words {
      type: list
      list_field: word
    }

    measure: full_transcript {
      type: string
      sql: string_agg(${word}, ' ' order by ${start_secs}) ;;
    }
  }
