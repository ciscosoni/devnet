terraform {
    required_providers {
      aci = {
        source = "CiscoDevNet/aci"
      }
    }
    
}

provider "aci" {
    username = "admin"
    password = "admin@123"
    insecure = true
    url = "https://192.168.1.199"
}

resource "aci_tenant" "tenant" {
    name = var.tenant
    description = "Created from Terraform"
}

resource "aci_application_profile" "app" {
    tenant_dn = aci_tenant.tenant.id 
    name = var.app
    description = "Created from Terraform"

}

resource "aci_application_epg" "epg" {
    for_each = {
        for epg_name, epg in var.epg : epg_name => epg 
    }
    application_profile_dn = aci_application_profile.app.id
    name = each.value
}

