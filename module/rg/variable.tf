variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {
  rg1 = {
    name     = "rg1"
    location = "East US"
  }
  rg2 = {
    name     = "rg2"
    location = "West US"
  }
}
}


