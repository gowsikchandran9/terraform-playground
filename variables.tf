variable "s3_bucket" {
  description = "playground-app-terraform-state-bucket"
}

variable "name" {
  type    = string
  default = "Mark"
}

variable "number" {
  type    = bool
  default = true

}
variable "distance" {
  type    = number
  default = 5

}
variable "jedi" {
  type = map(any)
  default = {
    filename = "/root/first-jedi"
    content  = "phanius"
  }

}

variable "gender" {
  type    = list(string)
  default = ["Male", "Female"]
}
variable "hard_drive" {
  type = map(any)
  default = {
    slow = "HHD"
    fast = "SSD"
  }
}
variable "users" {
  type    = set(string)
  default = ["tom", "jerry", "pluto", "daffy", "donald", "jerry", "chip", "dale"]


}