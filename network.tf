resource "oci_core_virtual_network" "main_vcn" {
  cidr_block     = "10.1.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "Main"
  dns_label      = "mainvcn"
}

resource "oci_core_subnet" "main_subnet" {
  cidr_block        = "10.1.20.0/24"
  display_name      = "mainSubnet"
  dns_label         = "mainsubnet"
  security_list_ids = [oci_core_security_list.main_security_list.id]
  compartment_id    = var.compartment_ocid
  vcn_id            = oci_core_virtual_network.main_vcn.id
  route_table_id    = oci_core_route_table.main_route_table.id
  dhcp_options_id   = oci_core_virtual_network.main_vcn.default_dhcp_options_id
}

resource "oci_core_internet_gateway" "main_internet_gateway" {
  compartment_id = var.compartment_ocid
  display_name   = "maintIG"
  vcn_id         = oci_core_virtual_network.main_vcn.id
}

resource "oci_core_route_table" "main_route_table" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_virtual_network.main_vcn.id
  display_name   = "mainRouteTable"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.main_internet_gateway.id
  }
}
