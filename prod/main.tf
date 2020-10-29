provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

module "app" {
  source           = "../modules/app"
  public_key_path  = "${var.public_key_path}"
  zone             = "${var.zone}"
  app_disk_image   = "${var.app_disk_image}"
  machine_type     = "${var.machine_type}"
  user_ssh         = "${var.user_ssh}"
  private_key_path = "${var.private_key_path}"
}

module "db" {
  source           = "../modules/db"
  public_key_path  = "${var.public_key_path}"
  zone             = "${var.zone}"
  app_disk_image   = "${var.db_disk_image}"
  machine_type     = "${var.machine_type}"
  user_ssh         = "${var.user_ssh}"
  private_key_path = "${var.private_key_path}"
}

module "vpc" {
  source = "../modules/vpc"
}
