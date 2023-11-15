data oci_ocvp_esxi_hosts export_esxi_hosts {
    sddc_id = var.SDDC_OCID
}

data oci_core_vlan attach_vlan {
    vlan_id = oci_core_vlan.new_vlan.id
}

output "SDDC_hosts" {
    value = length(data.oci_ocvp_esxi_hosts.export_esxi_hosts.esxi_host_collection)
}

resource "oci_core_vnic_attachment" "vnic_attachment-nic0" {
    count = length(data.oci_ocvp_esxi_hosts.export_esxi_hosts.esxi_host_collection)
    create_vnic_details {
        display_name = "${data.oci_core_vlan.attach_vlan.display_name}-Nic0"
        vlan_id = oci_core_vlan.new_vlan.id
    }
    instance_id =  data.oci_ocvp_esxi_hosts.export_esxi_hosts.esxi_host_collection[count.index].compute_instance_id
    nic_index = 0
}

resource "oci_core_vnic_attachment" "vnic_attachment-nic1" {
    count = length(data.oci_ocvp_esxi_hosts.export_esxi_hosts.esxi_host_collection)
    create_vnic_details {
        display_name = "${data.oci_core_vlan.attach_vlan.display_name}-Nic1"
        vlan_id = oci_core_vlan.new_vlan.id
    }
    instance_id =  data.oci_ocvp_esxi_hosts.export_esxi_hosts.esxi_host_collection[count.index].compute_instance_id
    nic_index = 1
}
