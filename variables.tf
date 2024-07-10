variable "apim" {
  type = object({
    name                = string
    resource_group_name = string
  })
}