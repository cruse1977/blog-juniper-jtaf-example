terraform {
  required_providers {
    junos-vmx = {
      source  = "pulsant.net/nops/junos-vmx"
      version = ">= 18.2.0"
    }
  }
}

		
resource "junos-vmx_InterfacesInterfaceUnitFamilyInetAddressVirtual__Gateway__Address" "demo" {
    resource_name = "MA24_1234_1"
    name = "irb"
    name__1 = "5010"
    name__2 = "192.168.2.3/24"
    virtual__gateway__address = "192.168.2.1"
}

resource "junos-vmx_InterfacesInterfaceUnitVirtual__Gateway__Accept__Data" "demo" {
    resource_name = "MA24_1234_1"
    name = "irb"
    name__1 = "5010"
    virtual__gateway__accept__data = ""
}

resource "junos-vmx_InterfacesInterfaceUnitProxy__Macip__Advertisement" "demo" {
    resource_name = "MA24_1234_2"
    name = "irb"
    name__1 = "5010"
    proxy__macip__advertisement =  ""
}

resource "junos-vmx_Routing__InstancesInstanceBridge__DomainsDomainVxlanIngress__Node__Replication" "demo" {
    resource_name = "MA24_1234_3"
    name = "RI_DEFAULT-VSWITCH"
    name__1 = "bd5010"
    ingress__node__replication =  ""
}

resource "junos-vmx_Routing__InstancesInstanceBridge__DomainsDomainDomain__Type" "demo" {
    resource_name = "MA24_1234_4"
    name = "RI_DEFAULT-VSWITCH"
	name__1 = "bd5010"
	domain__type = "bridge"
}

resource "junos-vmx_Routing__InstancesInstanceBridge__DomainsDomainNo__Arp__Suppression" "demo" {
    resource_name = "MA24_1234_5"
    name = "RI_DEFAULT-VSWITCH"
    name__1 = "bd5010"
    no__arp__suppression = ""
}

resource "junos-vmx_Routing__InstancesInstanceBridge__DomainsDomainRouting__Interface" "demo" {
    resource_name = "MA24_1234_6"
    name = "RI_DEFAULT-VSWITCH"
    name__1 = "bd5010"
    routing__interface = "irb.5010"
}

resource "junos-vmx_Routing__InstancesInstanceBridge__DomainsDomainVxlanVni" "demo" {
    resource_name = "MA24_1234_7"
    name = "RI_DEFAULT-VSWITCH"
    name__1 = "bd5010"
    vni = "5010"
}

resource "junos-vmx_Policy__OptionsCommunityMembers" "demo" {
    resource_name = "MA24_1234_8"
    name = "comm5010"
    members = "target:65000:5010"
}

resource "junos-vmx_Policy__OptionsPolicy__StatementTermFromCommunity" "demo" {
    resource_name = "MA24_1234_9"
    name = "POL_DEFAULT-VSWITCH-IMPORT"
    name__1 = "t1"
    community = "comm5010"
}

resource "junos-vmx_Routing__InstancesInstanceBridge__DomainsDomainVlan__Id" "demo"{
    resource_name = "MA24_1234_10"
    name = "RI_DEFAULT-VSWITCH"
    name__1 = "bd5010"
    vlan__id = "10" 
}

resource "junos-vmx_Policy__OptionsPolicy__StatementTermThenAccept" "demo" {
    resource_name = "MA24_1234_11"
    name = "POL_DEFAULT-VSWITCH-IMPORT"
    name__1 = "t1"
    accept = ""
}

resource "junos-vmx_Routing__InstancesInstanceProtocolsEvpnExtended__Vni__List" "demo" {
    resource_name = "MA24_1234_12"
    name = "RI_DEFAULT-VSWITCH"
    extended__vni__list = "5010"
}

resource "junos-vmx_Routing__InstancesInstanceProtocolsEvpnVni__OptionsVniVrf__TargetCommunity" "demo" {
    resource_name = "MA24_1234_13"
    name = "RI_DEFAULT-VSWITCH"
    name__1 = "5010"
    community = "target:65000:5010"
}

