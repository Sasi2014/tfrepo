
provider "azurerm" {
  features {}
  subscription_id ="f8db028e-fb6c-475e-a946-ebc82156e251"
  client_id       ="a53cf727-954d-4374-a734-a3fec2bd1244"
  client_secret   ="0jd8Q~2GhD7oGsJcb4sy1iogQQb4Y2yZ7TlUvduF"      #0jd8Q~2GhD7oGsJcb4sy1iogQQb4Y2yZ7TlUvduF
  tenant_id       ="6000a4b5-5342-4e8b-b4d5-77032e888978"
}

terraform {
  backend "azurerm" {
    storage_account_name = "saanji1"
    container_name       = "cont1"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "DZQ3rQgeIBIs6ajju4expXQzdTSKcdeFcAkvPCoNeSpi398kG8rZqz66+9nqOVQ1B13eVm+ZGiSY+AStBtJ6Ww=="
  }
}
