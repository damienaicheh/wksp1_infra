module "workspace" {
  source  = "git::github.com/damienaicheh/modules_wksp_definition?ref=1.2.0" 
  apim_id = data.azurerm_api_management.apim.id
  workspace = {
    name         = "TO_DEFINE"
    description  = "TO_DEFINE"
    display_name = "TO_DEFINE"
  }
}