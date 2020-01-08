## Site to Site VPN

- A **site to site VPN connection** here refers to connecting the own premises network to AWS VPCs
- A **VPN tunnel** is an encrypted link which can pass data from on premises to the VPCs. A VPN connection comprises of 2 VPN tunnels for HA.
- A **customer gateway device** is a physical or software application at customer's end to facilitate the VPN connectivity. **Customer gateway** is an AWS resource used to store information about customer gateway device.
- **Virtual private gateway** is the gateway responspible for VPN connection from AWS side. A virtual private gateway is attached to the VPC where VPN connectivity is required. *Autonomous System Number (ASN)* can be specified while creating a virtual private gateway, default value is used if not specified. ASN is immutable.
- A customer gateway can connect to either a virtual private gateway or a transit gateway.
- Customer gateway is the initiator for the VPN tunnel, not the AWS side. VPN tunnel may go down after 10s of idle time. 
- **Limitations** are IPv6 traffic is unsupported and Path MTU discovery is unsupported.
