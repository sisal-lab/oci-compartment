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


resource "oci_identity_compartment" "main" {
  #Required
  compartment_id = var.tenancy_ocid
  
  name = "Sisal-Engineering"
  description = "Compartment dedicated to Engineering activities"
  
  #Optional
  #defined_tags = {"Operations.CostCenter"= "42"}
  #freeform_tags = {"Department"= "Finance"}
}
