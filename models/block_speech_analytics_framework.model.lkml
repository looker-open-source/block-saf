connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard"
include: "*.explore.lkml"
include: "//@{CONFIG_PROJECT_NAME}/views/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

explore: transcripts {
  extends: [transcripts_config]
}

explore: transcripts_core {
  extension: required
  sql_always_where: ${duration} is not null ;;
  join: transcript_words {
    sql: ,UNNEST(transcripts.words) as transcript_words ;;
    relationship: one_to_many
  }
  join: transcript_entities {
    sql: ,unnest(transcripts.entities) as transcript_entities ;;
    relationship: one_to_many
  }
  join: transcript_sentences {
    sql: ,unnest(${transcripts.sentences}) as transcript_sentences ;;
    relationship: one_to_many
  }

}
