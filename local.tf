/*
resource "local_file" "pet" {
  filename = "${path.module}/pets.txt"
  content = "We love pets! My pets name is ${random_pet.my-pet.id}. Another name is ${var.name}."
  file_permission = "0700"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}

output "welcome_message" {
  value = local_file.pet.content
  description = "Display the content of file"
}*/
