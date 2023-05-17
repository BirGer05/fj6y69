module "read" {
  source = "./modules/read"
  files_output = module.files.custom
}