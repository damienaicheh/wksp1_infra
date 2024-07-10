module "workspace" {
  source = "git::github.com/damienaicheh/modules_wksp_definition?ref=1.3.0"
  apim = {
    id                  = data.azurerm_api_management.apim.id
    name                = var.apim.name
    resource_group_name = var.apim.resource_group_name
  }
  workspace = {
    name         = "wksp-1"
    description  = "Workspace 1 is for all the apps..."
    display_name = "Workspace 1"
  }
  products = [
    {
      name                  = "wksp1-free"
      approval_required     = true
      description           = "Free to test only"
      display_name          = "Wksp1 Free"
      subscription_required = true
      subscriptions_limit   = 1
    },
    {
      name                  = "wksp1-standard"
      approval_required     = true
      description           = "Standard for individual professionals"
      display_name          = "Wksp1 Standard"
      subscription_required = true
      subscriptions_limit   = 10
    },
    {
      name                  = "wksp1-premium"
      approval_required     = true
      description           = "Premium for enterprise only"
      display_name          = "Wksp1 Premium"
      subscription_required = true
      subscriptions_limit   = 1000
    }
  ]
}