data "oci_core_vcn" "test_vcn" {
    #Get VCN information to leverage the same compartment ID
    vcn_id = var.VCN_OCID
}

resource "oci_core_vlan" "new_vlan" {
    cidr_block = var.VLAN_CIDR
    compartment_id = data.oci_core_vcn.test_vcn.compartment_id
    vcn_id = var.VCN_OCID
    display_name =var.VLAN_Name
    vlan_tag = var.VLAN_TAG_ID
}