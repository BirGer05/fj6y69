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

module "write" {
  source = "./modules/write"
}

module "data" {
  source = "./modules/data"
  generated_file_path = "${path.module}/${var.name}_${count.index}"
}