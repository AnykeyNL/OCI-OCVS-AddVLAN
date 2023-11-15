
variable region {default = "your_region"}  #example: eu-frankfurt-1
variable SDDC_OCID {default = "OCID_of_your_SDDC"}
variable VCN_OCID { default = "OCID_of_your_VCN_That_the_VLAN_will_be_created_into"}
variable VLAN_Name { default = "VLAN-Name"}
variable VLAN_CIDR { default = "VLAN_CIDR_RANGE"}  #example: 192.168.1.0/24 -> Range needs to be within VCN range
variable VLAN_TAG_ID  { default = 2000}  # Change number for unique VLAN ID



