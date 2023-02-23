# CodeLab-Terraform-CloudFront

Essential Front-end Production Stack using [Terraform](https://developer.hashicorp.com/terraform/intro) of Hashicorp.

TODO

D2 source: [`.diagram/cloudfront-for-next-js.d2`](.diagram/cloudfront-for-next-js.d2)

- [CodeLab-Terraform-CloudFront](#codelab-terraform-cloudfront)
  - [Prerequisites](#prerequisites)
    - [P-1. CLI tools](#p-1-cli-tools)
    - [P-2. Set AWS Credentials](#p-2-set-aws-credentials)

---

## Prerequisites

### P-1. CLI tools

- [Install terraform](https://developer.hashicorp.com/terraform/downloads):
  recommend [using brew](https://formulae.brew.sh/formula/terraform) for Mac user

- [Install AWS CLI v2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html):
  recommend [using brew](https://formulae.brew.sh/formula/awscli) for Mac user

### P-2. Set AWS Credentials

<details>
<summary>&nbsp;Here is reference format for <code>~/.aws/credentials</code></summary><br/>

```properties
# =======================================================================

# IAM User:  sandbox
# IAM Group: sandbox-admin
# IAM Role:  terraform-executable-role

[sandbox-user-in-admin-group]
aws_access_key_id     = <IAM_USER_CREDENTIALS_ACCESS_KEY>
aws_secret_access_key = <IAM_USER_CREDENTIALS_SECRET_KEY>

[sandbox-iac-execution]
source_profile = sandbox-user-in-admin-group
role_arn       = arn:aws:iam::<ACCOUNT_ID>:role/<IAM_ROLE_NAME>

# =======================================================================
```

</details>

```bash
# Set the profile include assuming
export AWS_PROFILE="sandbox-iac-execution"

# Check
aws sts get-caller-identity --output json | jq

# Result would be like this
# {
# "UserId": "XXXXXXXXXXXXXXXXXXXXX:botocore-session-XXXXXXXXXX"
# "Account": "XXXXXXXXXXXX"
# "Arn": "arn:aws:sts::XXXXXXXXXXXX:assumed-role/terraform-executable-role/botocore-session-XXXXXXXXXX"
# }
```
