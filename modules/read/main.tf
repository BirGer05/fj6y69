module "files" {
  source = "../files"
  content = "RandomThingis"
  name = "Name"
  file_count = var.files_count
}