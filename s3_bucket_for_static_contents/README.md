# s3_bucket_for_static_contents

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
| [aws_s3_bucket.created_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_ownership_controls.created_bucket_disable_acls_with_enforcing_only_owner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.created_bucket_block_all_public_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Specific Amazon S3 bucket name | `string` | n/a | yes |
| <a name="input_bucket_tags"></a> [bucket\_tags](#input\_bucket\_tags) | Custom tags to attach the Amazon S3 bucket | `map(any)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Target region name on provision | `string` | `"ap-northeast-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_bucket_arn"></a> [created\_bucket\_arn](#output\_created\_bucket\_arn) | ======================================== // S3: Deployment Destiation of Next.js ======================================== |
| <a name="output_created_bucket_id"></a> [created\_bucket\_id](#output\_created\_bucket\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
