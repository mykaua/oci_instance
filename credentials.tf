
variable "tenancy_ocid" {
  description = "Tenancy OCID"
  type = string
}

variable "user_ocid" {
  description = "User OCID"
  type = string
}

variable "fingerprint" {
  type = string
}

variable "private_key_path" {
  type = string
}

variable "region" {
  type = string
  default = "eu-frankfurt-1"
}

variable "compartment_ocid" {
  type = string
}


variable "ssh_public_key" {
  type = string
}
