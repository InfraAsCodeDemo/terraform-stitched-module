//--------------------------------------------------------------------
// Variables
variable "simplevm_clientId" {}
variable "simplevm_clientSecret" {}
variable "simplevm_hradwareType" {}
variable "simplevm_network" {}
variable "simplevm_region" {}
variable "simplevm_rgName" {}
variable "simplevm_subnet" {}
variable "simplevm_subscriptionId" {}
variable "simplevm_tenantId" {}
variable "simplevm_vmname" {}

//-----------------------------------------------------------------

provider "azurerm" {
  subscription_id = "${var.simplevm_subscriptionId}"
  client_id       = "${var.simplevm_clientId}"
  client_secret   = "${var.simplevm_clientSecret}"
  tenant_id       = "${var.simplevm_tenantId}"
}
//--------------------------------------------------------------------
// Modules
module "simplevm" {
  source  = "app.terraform.io/custdemo/simplevm/azure"
  version = "1.0.1"

  clientId = "${var.simplevm_clientId}"
  clientSecret = "${var.simplevm_clientSecret}"
  hradwareType = "${var.simplevm_hradwareType}"
  network = "${var.simplevm_network}"
  region = "${var.simplevm_region}"
  rgName = "${var.simplevm_rgName}"
  subnet = "${var.simplevm_subnet}"
  subscriptionId = "${var.simplevm_subscriptionId}"
  tenantId = "${var.simplevm_tenantId}"
  vmname = "${var.simplevm_vmname}"
}
