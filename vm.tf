resource "oci_core_instance" "main_instance" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "mainInstance"
  shape               = var.instance_shape

  shape_config {
    ocpus = var.instance_ocpus
    memory_in_gbs = var.instance_shape_config_memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.main_subnet.id
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "maininstance"
  }

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.main_images.images[0].id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }
}


