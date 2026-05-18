terraform {
  required_version = "1.14.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "3.1.1"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "3.1.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.19.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "bimlens"

    workspaces {
      prefix = "bimlens-"
    }
  }
}