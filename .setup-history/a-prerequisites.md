# A. Prerequisites

- [A. Prerequisites](#a-prerequisites)
  - [A1. CLI tools](#a1-cli-tools)
  - [A2. Set AWS Credentials](#a2-set-aws-credentials)
    - [P-3. Enable pre-commit hook](#p-3-enable-pre-commit-hook)

## A1. CLI tools

- [Install terraform](https://developer.hashicorp.com/terraform/downloads):
  recommend [using brew](https://formulae.brew.sh/formula/terraform) for Mac user

- [Install AWS CLI v2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html):
  recommend [using brew](https://formulae.brew.sh/formula/awscli) for Mac user

- [Install pre-commit](https://pre-commit.com/#install):
  recommend [using brew](https://formulae.brew.sh/formula/pre-commit) for Mac user

  - [Install tflint](https://github.com/terraform-linters/tflint#installation):
    recommend [using brew](https://formulae.brew.sh/formula/tflint)

  - [Install tfupdate](https://github.com/minamijoyo/tfupdate#install):
    recommend [using brew](https://formulae.brew.sh/formula/tfupdate)

## A2. Set AWS Credentials

```bash
# Set the profile include assuming
export AWS_PROFILE="sandbox-iac-execution"

# Check
aws sts get-caller-identity --output json | jq

# Result would be like this
# {
#   "UserId": "XXXXXXXXXXXXXXXXXXXXX:botocore-session-XXXXXXXXXX"
#   "Account": "XXXXXXXXXXXX"
#   "Arn": "arn:aws:sts::XXXXXXXXXXXX:assumed-role/terraform-executable-role/botocore-session-XXXXXXXXXX"
# }
```

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

### P-3. Enable pre-commit hook

```bash
# Check installation
pre-commmit --version

# Update latest version
pre-commit autoupdate
```

Reference: [pre-commmit usage](https://pre-commit.com/#usage)
