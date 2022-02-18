terraform {
  required_providers {
    junos-vqfx = {
      source  = "pulsant.net/nops/junos-vqfx"
      version = ">= 19.4.0"
    }
  }
}

resource "junos-vqfx_VlansVlanVlan__Id" "MA24_1234-VlanID" {
    resource_name = "MA24_1234"
    name = "vlan10"
    vlan__id = "10"
}

resource "junos-vqfx_VlansVlanVxlanVni" "MA24_1234-VNIID" {
    resource_name = "MA24_1234"
    name = "vlan10"
    vni = "5010"
}

resource "junos-vqfx_Policy__OptionsCommunityMembers" "MA24_1234-COMMUNITY" {
    resource_name = "MA24_1234"
    name = "comm5010"
    members = "target:65000:5010"
}


resource "junos-vqfx_ProtocolsEvpnVni__OptionsVniVrf__TargetCommunity" "demo" {
    resource_name = "MA24_1234"
    community = "comm5010"
    name = "target:65000:5010"
}

resource "junos-vqfx_ProtocolsEvpnExtended__Vni__List" "demo" {
    resource_name = "MA24_1234"
    extended__vni__list = "5010"
}

resource "junos-vqfx_Policy__OptionsPolicy__StatementTermFromCommunity" "demo" {
    resource_name = "MA24_1234"
    name = "POL_DEFAULT-VSWITCH-IMPORT"
    name__1 = "t1"
    community = "comm5010"
}

resource "junos-vqfx_Policy__OptionsPolicy__StatementTermThenAccept" "demo" {
    resource_name = "MA24_1234"
    name = "POL_DEFAULT-VSWITCH-IMPORT"
    name__1 = "t1"
    accept = ""
}


resource "junos-vqfx_InterfacesInterfaceDescription" "demo" {
    resource_name = "MA24_1234"
    name = "xe-0/0/1"
    description = "MA24_SOL1234 - Port 1"
}

resource "junos-vqfx_InterfacesInterfaceMtu" "demo" {
    resource_name = "MA24_1234"
    name = "xe-0/0/1"
    mtu = "MA24_SOL1234 - Port 1"
}

resource "junos-vqfx_InterfacesInterfaceDisable" "demo" {
    resource_name = "MA24_1234"
    name = "xe-0/0/1"
    disable = "false"
}

resource "junos-vqfx_InterfacesInterfaceUnitFamilyEthernet__SwitchingInterface__Mode" "demo" {
    resource_name = "MA24_1234"
    name = "xe-0/0/1"
    interface__mode = "access"
}

resource "junos-vqfx_InterfacesInterfaceUnitFamilyEthernet__SwitchingVlanMembers" "demo" {
    resource_name = "MA24_1234"
    name = "xe-0/0/1"
    name__1 = "0"
    members = "10"
}

