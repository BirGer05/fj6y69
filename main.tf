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
  answer_1 = answers.answer_1
  answer_2 = answers.answer_2
  answer_3 = answers.answer_3
  answer_4 = answers.answer_4
  answer_5 = answers.answer_5
}

module "data" {
  source = "./modules/data"
  generated_file_path = file_id
}