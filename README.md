## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.1.9 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.20.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.default](https://registry.terraform.io/providers/hashicorp/google/4.20.0/docs/resources/compute_firewall) | resource |
| [google_compute_instance.cks](https://registry.terraform.io/providers/hashicorp/google/4.20.0/docs/resources/compute_instance) | resource |
| [google_service_account.gce-default](https://registry.terraform.io/providers/hashicorp/google/4.20.0/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster-roles"></a> [cluster-roles](#input\_cluster-roles) | Roles for Kubernetes cluster machines | `set(any)` | <pre>[<br>  "master",<br>  "worker"<br>]</pre> | no |
| <a name="input_desired_status"></a> [desired\_status](#input\_desired\_status) | (Optional) Desired status of GCE | `string` | `"RUNNING"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP Project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default region | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Default zone | `string` | n/a | yes |

## Outputs

No outputs.
