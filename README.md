<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.111.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.main_instance](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_internet_gateway.main_internet_gateway](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_internet_gateway) | resource |
| [oci_core_route_table.main_route_table](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_route_table) | resource |
| [oci_core_security_list.main_security_list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.main_subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_virtual_network.main_vcn](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_virtual_network) | resource |
| [oci_core_images.main_images](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |
| [oci_identity_availability_domain.ad](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | n/a | `string` | `"ocid1.tenancy.oc1..aaaaaaaaejpdqmsx3q3vtfghhf3wi2xokjyhilebdp7qlldi6okmlayi3irq"` | no |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | n/a | `string` | `"4a:55:ee:e8:de:f1:13:fb:9c:13:11:97:d8:d2:7a:3b"` | no |
| <a name="input_instance_ocpus"></a> [instance\_ocpus](#input\_instance\_ocpus) | n/a | `number` | `1` | no |
| <a name="input_instance_shape"></a> [instance\_shape](#input\_instance\_shape) | n/a | `string` | `"VM.Standard.A1.Flex"` | no |
| <a name="input_instance_shape_config_memory_in_gbs"></a> [instance\_shape\_config\_memory\_in\_gbs](#input\_instance\_shape\_config\_memory\_in\_gbs) | n/a | `number` | `6` | no |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | n/a | `string` | `"/Users/slevincalebra/Myproject/github/oracle_cloud/mykaua@gmail.com_2023-03-10T14_30_28.081Z.pem"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-frankfurt-1"` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | n/a | `string` | `"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ4xcO9QvEIUnxY+s93WmlbylnQSTqMejkd1sQzrQ21rvt87p2siFQUHsBmCLq7vEs5S9v/27c8pW4T7TWOzq47gJ2A8kMOvOcpS7nv1dx+/Ppers7os/GigJtpEOHB2bb7j8P2Y05z6aEjN1lQQGn+wWD07PCBAGX81WtfFkBdNbb0CFdInjbluGtPQZBUaxxKd+NSbqmiSz8tNw1V6/um9Xe8qM4D2sbQOKmTWst0WAgQf5J1ikvacIyrEKaPZPc9bLOm0MPffGOQfaRJsG/6819AS9M8QNwNBmxL0FrgIXD7ygW+QLFNkluQCVnRaWiVek7WA7TcN1No09dmTir Mykola Raryk"` | no |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | Tenancy OCID | `string` | `"ocid1.tenancy.oc1..aaaaaaaaejpdqmsx3q3vtfghhf3wi2xokjyhilebdp7qlldi6okmlayi3irq"` | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | User OCID | `string` | `"ocid1.user.oc1..aaaaaaaapwi44ed4vfji4allkl4svqnzmwmhk4ezrf37k7t5oygk5ia2evea"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip_addr"></a> [instance\_ip\_addr](#output\_instance\_ip\_addr) | The private IP address of the main server instance. |
<!-- END_TF_DOCS -->