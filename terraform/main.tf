module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "psanthg+orgafttest2@amazon.com"
    AccountName               = "Aftorg2-accnt1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "psanthg+orgafttest2@amazon.com"
    SSOUserFirstName          = "aftorg3"
    SSOUserLastName           = "account3"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Aftorg2-accnt"
}
