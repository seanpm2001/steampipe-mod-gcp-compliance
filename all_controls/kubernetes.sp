locals {
  all_controls_kubernetes_common_tags = merge(local.all_controls_common_tags, {
    service = "GCP/Kubernetes"
  })
}

benchmark "all_controls_kubernetes" {
  title       = "Kubernetes"
  description = "This section contains recommendations for configuring Kubernetes resources."
  children = [
    control.allow_only_private_cluster,
    control.disable_gke_dashboard,
    control.disable_gke_default_service_account,
    control.disable_gke_legacy_abac,
    control.disable_gke_legacy_endpoints,
    control.enable_alias_ip_ranges,
    control.enable_auto_repair,
    control.enable_auto_upgrade,
    control.enable_gke_master_authorized_networks,
    control.gke_container_optimized_os,
    control.gke_restrict_pod_traffic,
    control.kubernetes_cluster_kubernetes_alpha_enabled,
    control.kubernetes_cluster_logging_enabled,
    control.kubernetes_cluster_monitoring_enabled,
    control.kubernetes_cluster_no_default_network,
    control.kubernetes_cluster_with_resource_labels,
    control.kubernetes_cluster_database_encryption_enabled,
    control.kubernetes_cluster_shielded_nodes_enabled,
    control.kubernetes_cluster_shielded_instance_integrity_monitoring_enabled,
  ]

  tags = merge(local.all_controls_kubernetes_common_tags, {
    type = "Benchmark"
  })
}
