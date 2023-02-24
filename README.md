# CodeLab-Terraform-CloudFront

TODO: svg

D2 source: [`.diagram/cloudfront-for-next-js.d2`](.diagram/cloudfront-for-next-js.d2)

- [CodeLab-Terraform-CloudFront](#codelab-terraform-cloudfront)
  - [Quick start](#quick-start)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)
  - [History](#history)

## Quick start

```bash
# Download required modules
terraform init

# Format
terraform fmt -recursive

# Plan
terraform plan -var-file=input.auto.tfvars

# Provision
terraform apply -var-file=input.auto.tfvars
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.55.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.55.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_static_destination"></a> [static\_destination](#module\_static\_destination) | ./s3_bucket_for_static_contents | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket_cors_configuration.static_cors_config](https://registry.terraform.io/providers/hashicorp/aws/4.55.0/docs/resources/s3_bucket_cors_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | System tags to be applied to all components. | `map(any)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Target region name on provision | `string` | `"ap-northeast-2"` | no |
| <a name="input_svc_app_name"></a> [svc\_app\_name](#input\_svc\_app\_name) | Target service application name | `string` | n/a | yes |
| <a name="input_svc_root_domain"></a> [svc\_root\_domain](#input\_svc\_root\_domain) | Owned domain name for the website of service. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## History

- [Prerequisites](.setup-history/a-prerequisites.md#a-prerequisites)
- [Remote Backend](.setup-history/b-remote-backend.md#b-prepare-remote-backend)
