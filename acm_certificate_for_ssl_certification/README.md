# acm_certificate_for_ssl_certification

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= v1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.55.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.55.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.ssl_certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.ssl_certificate_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_tag"></a> [certificate\_tag](#input\_certificate\_tag) | Custom tags to attach the AWS managed SSL certification | `map(any)` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Target domain name for the AWS managed SSL certification | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Target region name on provision | `string` | `"ap-northeast-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssl_certi_arn"></a> [ssl\_certi\_arn](#output\_ssl\_certi\_arn) | SSL certificate's ARN |
| <a name="output_ssl_certi_certificate_chain"></a> [ssl\_certi\_certificate\_chain](#output\_ssl\_certi\_certificate\_chain) | SSL certificate's chain domain name |
| <a name="output_ssl_certi_domain_name"></a> [ssl\_certi\_domain\_name](#output\_ssl\_certi\_domain\_name) | SSL certificate's domain name |
| <a name="output_ssl_certi_status"></a> [ssl\_certi\_status](#output\_ssl\_certi\_status) | SSL certificate's validation status |
| <a name="output_ssl_certi_validation_method"></a> [ssl\_certi\_validation\_method](#output\_ssl\_certi\_validation\_method) | SSL certificate's validation method |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
