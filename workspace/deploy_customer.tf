terraform {
  required_providers {
    junos-vqfx = {
      source  = "pulsant.net/nops/junos-vqfx"
      version = ">= 19.4.0"
    }
    junos-vmx = {
      source  = "pulsant.net/nops/junos-vmx"
      version = ">= 18.2.0"
    }
  }
}

provider "junos-vqfx" {
    host = "192.168.1.132"
    port = 22
    username = "netconf"
    password = "Juniper123"
    sshkey = ""
}

provider "junos-vmx" {
    host = "192.168.1.131"
    port = 22
    username = "netconf"
    password = "Juniper123"
    sshkey = ""
}

module "qfx_1" {
   source = "./qfx_1"
   providers = { junos-vqfx = junos-vqfx }
   depends_on = [junos-vqfx_destroycommit.commit-main]
}

module "vmx_1" {
   source = "./vmx_1"
   providers = { junos-vmx = junos-vmx }
   depends_on = [ junos-vmx_destroycommit.commit-main ]
}

resource "junos-vqfx_commit" "commit-main" {
    resource_name = "commit"
    depends_on = [module.qfx_1]
}

resource "junos-vqfx_destroycommit" "commit-main" {
  resource_name = "destroycommit"
}

resource "junos-vmx_commit" "commit-main" {
    resource_name = "commit"
    depends_on = [module.vmx_1]
}

resource "junos-vmx_destroycommit" "commit-main" {
  resource_name = "destroycommit"
}


