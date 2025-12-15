## Contents
- [Stastics](#stastics)
  - [Conversations](#conversations)
  - [Endpoints](#endpoints)
  - [IPv4 and IPv6](#ipv4-and-ipv6)
    - All Addresses - [(v4)](#all-addresses-v4) / [(v6)](#all-addresses-v6)
    - Destinations and Ports - [(v4)](#destinations-and-ports-v4) / [(v6)](#destinations-and-ports-v6)
    - IP Protocol Types - [(v4)](#ip-protocol-types-v4) / [(v6)](#ip-protocol-types-v6)
    - Source and Destination Addresses - [(v4)](#source-and-destination-addresses-v4) / [(v6)](#source-and-destination-addresses-v6)
  - [Protocol Hierarchy](#protocol-hierarchy)
  - [Resolved Addresses](#resolved-addresses)


## Stastics
### Resolved Addresses
We can view _resolved address_ (hosts) by clicking **Stastics** followed by **Resolved Addresses**.

In the _Wireshark - Resolved Addresses_ click **All entries** followed by **Hosts**. This gives us the friendly names for hosts. 


### Protocol Hierarchy
We can view _protocol hierarchy_ (protocols) by clicking **Stastics** followed by **Protocol Hierarchy**.

In the _Wireshark - Protocol Hierarchy Stastics_ we can see a breakdown of each protocol and the frequency of occourance.


### Conversations
We can view _conversations_ (protocols) by clicking **Stastics** followed by **Conversations**.

In the _Wireshark - Conversations_ window we can see conversations between end points.


### Endpoints
We can view the _endpoints_ by clicking  **Stastics** followed by **Endpoints**.

In the _Wireshark - Endpoints_ view we can see data similar to [Conversations](#conversations) but instead with hardware address. We can also enable hostname by clicking _Name resolution_

**Note**: In Wireshark click **Edit** followed by **Preferences...**, Within _Wireshark - Prefrences_ click **Name Resolution** and enable both _**Resolve transport names**_ and _**Resolve network (IP) addresses**_.

**Did you know**: You can display the IP end points on a map. You need the _MazMind_ database files set within the _Name Resolution_ preferences. You can then launch within _Endpoints, Map_.


### IPv4 and IPv6
#### IPv4
##### All Addresses (v4)
We can view all _IPv4_ addresses by clicking clicking **Stastics**, expanding **IPv4 Stastics** followed by **All Addresses**.

This gives is a great view of ip counts and percentage of utilisation etc. 

##### Destinations and Ports (v4)
We can view all _destinations and ports_ addresses by clicking clicking **Stastics**, expanding **IPv4 Stastics** followed by **Destinations and Ports**.

This gives us a great view of ports targeted at each destination. 

##### IP Protocol Types (v4)
We can view all _IP protocol types_ by clicking clicking **Stastics**, expanding **IPv4 Stastics** followed by **IP Protocol Types**.

Here we can see the summary of protocols in use.

##### Source and Destination Addresses (v4)
We can view all _source and destination addresses_ by clicking clicking **Stastics**, expanding **IPv4 Stastics** followed by **Source and Destination Addresses**.

This gives us counts seperated by source or destination. 


#### IPv6
##### All Addresses (v6)
We can view all _IPv6_ addresses by clicking clicking **Stastics**, expanding **IPv6 Stastics** followed by **All Addresses**.

This gives is a great view of ip counts and percentage of utilisation etc. 

##### Destinations and Ports (v6)
We can view all _destinations and ports_ addresses by clicking clicking **Stastics**, expanding **IPv6 Stastics** followed by **Destinations and Ports**.

This gives us a great view of ports targeted at each destination. 

##### IP Protocol Types (v6)
We can view all _IP protocol types_ by clicking clicking **Stastics**, expanding **IPv6 Stastics** followed by **IP Protocol Types**.

Here we can see the summary of protocols in use.

##### Source and Destination Addresses (v46)
We can view all _source and destination addresses_ by clicking clicking **Stastics**, expanding **IPv6 Stastics** followed by **Source and Destination Addresses**.

This gives us counts seperated by source or destination. 

### DNS
