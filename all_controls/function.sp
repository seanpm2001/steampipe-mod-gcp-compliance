locals {
  all_controls_cloudfunction_common_tags = merge(local.all_controls_common_tags, {
    service = "GCP/CloudFunctions"
  })
}

benchmark "all_controls_cloudfunction" {
  title       = "Cloud Functions"
  description = "This section contains recommendations for configuring Cloud Functions resources."
  children = [
    control.cloudfunction_function_no_ingress_settings_allow_all,
  ]

  tags = merge(local.all_controls_cloudfunction_common_tags, {
    type = "Benchmark"
  })
}


