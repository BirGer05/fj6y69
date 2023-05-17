data "local_file" "generated_file" {
  filename = "${path.module}/${var.name}_${count.index}"
}