output "instance_ip_addr" {
  value       = oci_core_instance.main_instance.public_ip
  description = "The private IP address of the main server instance."
}

