module "files" {
  source = "./modules/files"
  content = "RandomThingis"
  name = "Name"
  file_count = var.files_count
}

module "read" {
  source = "./modules/read"
  files_output = module.files.custom
}