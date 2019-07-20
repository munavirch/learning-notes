Azure Virtual Networks
======================

*   Azure Virtual Networks (VNets) provides isolation and networking capabilities to many AZ services.
*   Each VNet is scoped to a single region.
*   Each VNet is isolated and VNets can be further sugmented as subnets.
*   All resource is a VNet can access outbound internet by default.
*   COmmunication between AZ resources can be established using VNets or VNet endpoints.

### Outbound Connectivity

Outbound internet connection can be acheived in one of below three methods.

*   Instance level Public IP (ILPIP) - 1:1 relationship with the VM.
*   Instance attached to a public LB - uses PAT. A LB rule should be created to link LB public IP to back end pool
*   Instance without ILPIP nor LB - translates private IP to a public IP. No control over traffic flow