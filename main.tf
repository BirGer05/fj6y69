module "files" {
  source = "./modules/files"
  content = "RandomThingis"
  name = "Name"
  file_count = 3
}

module "read" {
  source = "./modules/read"
  files_output = module.files.custom
}