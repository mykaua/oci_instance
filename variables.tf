variable "instance_shape" {
  default = "VM.Standard.A1.Flex" # Or VM.Standard.E2.1.Micro
}

variable "instance_ocpus" { 
  default = 1 
}

variable "instance_shape_config_memory_in_gbs" { 
  default = 6 
}
