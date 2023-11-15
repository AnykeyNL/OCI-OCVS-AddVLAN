# OCI-OCVS-AddVLAN
Terreform example how to automate adding a new VLAN and assign to all ESXi Servers on OCVS

- This Terraform script will create a new VLAN in the specified VCN
- The VLAN will also be created in the same compartment of the VCN
- All ESXi hosts that are part of the SDDC will have 2 new VNIC attached to them, so that the VLAN is attached to both NIC0 and NIC1

After this, you still need to create a PortGroup on the Distributed Switch matching the same VLAN ID.

