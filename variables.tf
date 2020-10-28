variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable db_disk_image {
  description = "Disk image for mongo db"
}

variable machine_type {
    description = "Default machine type"
}

variable private_key_path {
    description = "Private key for ssh connection"
}

variable zone {
    description = "Default zone"
}

variable user_ssh {
    description = "Username for ssh private and public keys"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}