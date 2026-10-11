output "core_cpes_lookup_id" {
  description = "Map of id values across all core_cpes_lookup, keyed the same as var.core_cpes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_cpes.core_cpes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_cpes_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_cpes_lookup, keyed the same as var.core_cpes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_cpes.core_cpes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_cpes_lookup_cpes" {
  description = "Map of cpes values across all core_cpes_lookup, keyed the same as var.core_cpes_lookup except keys with no cpes are omitted"
  value       = { for k, v in data.oci_core_cpes.core_cpes_lookup : k => v.cpes if v.cpes != null && length(v.cpes) > 0 }
}
output "core_cpes_lookup_filter" {
  description = "Map of filter values across all core_cpes_lookup, keyed the same as var.core_cpes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_cpes.core_cpes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

