module "workspace" {
  source  = "git::github.com/damienaicheh/modules_wksp_definition?ref=1.2.0" 
  apim_id = data.azurerm_api_management.apim.id
  workspace = {
    name         = "wksp-1"
    description  = "Workspace 1 is for all the apps..."
    display_name = "Workspace 1"
  }
}