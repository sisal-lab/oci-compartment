terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = ">= 4"
    }
  }
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region = var.region
  
  user_ocid = var.user_ocid
  private_key = var.private_key
  fingerprint = var.fingerprint
}
