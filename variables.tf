variable "tenant" {
    type = string 
    description = "Tenant Name"
    default = "Soni-Tenant"
}

variable "app" {
    type = string 
    description = "Application profile Name"
    default = "Soni-App_Prof"
}

variable "epg" {
    type = list(string)
    description = "EPG's Name"
    default = ["Soni-EPG1","Soni-EPG2","Soni-EPG3","Soni-EPG4"]

}

