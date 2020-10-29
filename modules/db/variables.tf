variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable machine_type {
  description = "Default machine type"
}

variable zone {
  description = "Default zone"
}

variable user_ssh {
  description = "Username for ssh private and public keys"
}

variable db_disk_image {
  description = "Disk image for mongo db"
  default     = "reddit-db-base"
}

variable private_key_path {
  description = "Private key for ssh connection"
}
