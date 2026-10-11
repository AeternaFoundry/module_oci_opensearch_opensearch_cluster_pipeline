variable "opensearch_opensearch_cluster_pipelines" {
  description = <<EOT
Map of opensearch_opensearch_cluster_pipelines, attributes below
Required:
    - compartment_id
    - data_prepper_configuration_body
    - display_name
    - memory_gb
    - node_count
    - ocpu_count
    - pipeline_configuration_body
Optional:
    - defined_tags
    - freeform_tags
    - node_shape
    - nsg_id
    - opc_dry_run
    - subnet_compartment_id
    - subnet_id
    - vcn_compartment_id
    - vcn_id
    - reverse_connection_endpoints (block):
        - customer_fqdn (required)
        - customer_ip (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                  = string
    data_prepper_configuration_body = string
    display_name                    = string
    memory_gb                       = number
    node_count                      = number
    ocpu_count                      = number
    pipeline_configuration_body     = string
    defined_tags                    = optional(map(string))
    freeform_tags                   = optional(map(string))
    node_shape                      = optional(string)
    nsg_id                          = optional(string)
    opc_dry_run                     = optional(bool)
    subnet_compartment_id           = optional(string)
    subnet_id                       = optional(string)
    vcn_compartment_id              = optional(string)
    vcn_id                          = optional(string)
    reverse_connection_endpoints = optional(list(object({
      customer_fqdn = string
      customer_ip   = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

