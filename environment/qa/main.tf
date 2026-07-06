module "rg_module" {
  source = "../../module/rg"

  resource_groups = var.resource_groups
}