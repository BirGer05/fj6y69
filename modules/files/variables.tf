variable "file_count" {
  description = "How many files to create"
  type        = number
  default     = 3
}

variable "content" {
  description = "The content of the files"
  type        = string
  default     = "Én egy test fájl vagyok. Kérlek ne változtass a tartalmamon."
}

variable "name" {
  description = "The name of the files"
  type        = string
  default     = "I'm_a_file"
}