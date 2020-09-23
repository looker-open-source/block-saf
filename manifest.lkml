project_name: "block-dialogflow"


################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-dialogflow-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "call-home-demo"
  export: override_required
}

constant: DATASET_NAME {
  value: "insights_export_test"
  export: override_required
}

constant: TRANSCRIPT_TABLE_NAME {
  value: "insights_data"
  export: override_required
}

################ Dependencies ################


local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: DATASET_NAME {
    value: "@{DATASET_NAME}"
  }
  override_constant: TRANSCRIPT_TABLE_NAME {
    value: "@{TRANSCRIPT_TABLE_NAME}"
  }
}
