project_name: "block-saf"


################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-saf-config"
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
  value: "insights_data_*"
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
