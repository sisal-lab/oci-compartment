terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = ">= 4"
    }
  }
}

resource "oci_identity_compartment" "main" {
  provider = oci.home
  
  #Required
  compartment_id = var.tenancy_ocid
  
  name = var.name
  description = var.description
  
  #Optional
  enable_delete = true
  #defined_tags = {"Operations.CostCenter"= "42"}
  #freeform_tags = {"Department"= "Finance"}
}
