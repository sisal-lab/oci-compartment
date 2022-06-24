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


data "oci_identity_region_subscriptions" "regions" {
  #Required
  tenancy_id = var.tenancy_ocid
  
  filter {
    name = "is_home_region"
    values = [true]
  }
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
