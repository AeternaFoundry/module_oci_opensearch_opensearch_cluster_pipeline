resource "oci_opensearch_opensearch_cluster_pipeline" "opensearch_opensearch_cluster_pipelines" {
  for_each = var.opensearch_opensearch_cluster_pipelines

  compartment_id                  = each.value.compartment_id
  data_prepper_configuration_body = each.value.data_prepper_configuration_body
  display_name                    = each.value.display_name
  memory_gb                       = each.value.memory_gb
  node_count                      = each.value.node_count
  ocpu_count                      = each.value.ocpu_count
  pipeline_configuration_body     = each.value.pipeline_configuration_body
  defined_tags                    = each.value.defined_tags
  freeform_tags                   = each.value.freeform_tags
  node_shape                      = each.value.node_shape
  nsg_id                          = each.value.nsg_id
  opc_dry_run                     = each.value.opc_dry_run
  subnet_compartment_id           = each.value.subnet_compartment_id
  subnet_id                       = each.value.subnet_id
  vcn_compartment_id              = each.value.vcn_compartment_id
  vcn_id                          = each.value.vcn_id

  dynamic "reverse_connection_endpoints" {
    for_each = each.value.reverse_connection_endpoints != null ? each.value.reverse_connection_endpoints : []
    content {
      customer_fqdn = reverse_connection_endpoints.value.customer_fqdn
      customer_ip   = reverse_connection_endpoints.value.customer_ip
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

