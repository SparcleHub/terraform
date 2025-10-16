variable "name" {
  description = "Имя виртуальной машины"
  type        = string
}

variable "zone" {
  description = "Зона доступности"
  type        = string
}

variable "folder_id" {
  description = "ID каталога"
  type        = string
}

variable "image_id" {
  description = "ID образа"
  type        = string
}

variable "metadata_file" {
  description = "Путь к user-data файлу"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type = string
}

variable "nat" {
  type = bool
  default = true
}

variable "cores" {
  type        = number
  default     = 2
}

variable "memory" {
  type        = number
  default     = 2
}

variable "disk_size" {
  type        = number
  default     = 20
}

variable "platform_id" {
  type        = string
  default     = "standard-v3"
}


