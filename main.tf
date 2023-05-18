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
  answer_1 = var.answer_1
  answer_2 = var.answer_2
  answer_3 = var.answer_3
  answer_4 = var.answer_4
  answer_5 = var.answer_5
}

module "data" {
  source = "./modules/data"
  generated_file_path = module.read.files
  depends_on = [
    module.read
  ]
}
