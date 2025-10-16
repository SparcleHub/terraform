resource "yandex_compute_disk" "boot" {
  name     = "boot-${var.name}"
  type     = "network-hdd"
  size     = var.disk_size
  image_id = var.image_id
}

resource "yandex_compute_instance" "vm" {
  name        = var.name
  platform_id = var.platform_id

  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    user-data = file(var.metadata_file)
  }
}
