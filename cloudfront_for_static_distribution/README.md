# cloudfront_for_static_distribution

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
| [aws_cloudfront_distribution.distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_control.distribution_oac](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control) | resource |
| [aws_s3_bucket_cors_configuration.distribution_related_bucket_cors_config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration) | resource |
| [aws_s3_bucket_policy.distribution_related_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_cloudfront_cache_policy.distribution_policy_cache](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_cache_policy) | data source |
| [aws_cloudfront_origin_request_policy.distribution_policy_org_req](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_origin_request_policy) | data source |
| [aws_iam_policy_document.distribution_related_bucket_policy_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_s3_bucket.distribution_origin_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_bucket) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_certificate_arn"></a> [acm\_certificate\_arn](#input\_acm\_certificate\_arn) | SSL - AWS Certificate Manager(ACM) certificate arn | `string` | n/a | yes |
| <a name="input_distribution_tags"></a> [distribution\_tags](#input\_distribution\_tags) | Custom tags to attach the Amazon CloudFront | `map(any)` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Owned domain name for the website of service. | `string` | n/a | yes |
| <a name="input_origin_s3_bucket_arn"></a> [origin\_s3\_bucket\_arn](#input\_origin\_s3\_bucket\_arn) | Origin - Amazon S3 bucket arn | `string` | n/a | yes |
| <a name="input_origin_s3_bucket_id"></a> [origin\_s3\_bucket\_id](#input\_origin\_s3\_bucket\_id) | Origin - Amazon S3 bucket id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Target region name on provision | `string` | `"ap-northeast-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_distribution_domain_name"></a> [distribution\_domain\_name](#output\_distribution\_domain\_name) | ======================================== // AWS CloudFront Distribution ======================================== |
| <a name="output_distribution_viewer_certificate"></a> [distribution\_viewer\_certificate](#output\_distribution\_viewer\_certificate) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
