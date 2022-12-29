terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.24.0"
    }
  }
  required_version = ">=0.13"
  backend "s3" {
    profile = "demo"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    bucket  = "hcpcertifieddemowebsite123098"
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
