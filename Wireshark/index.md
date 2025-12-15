## Contents
- [Stastics](#stastics)
  - [Conversations](#conversations)
  - [DNS](#dns)
  - [Endpoints](#endpoints)
  - [HTTP](#http)
    - [Packet Counter](#packet-counter)
    - [Requests](#requests)
    - [Load Distribution](#load-distribution)
    - [Request Sequences](#request-sequences)
  - [IPv4 and IPv6](#ipv4-and-ipv6)
    - All Addresses - [(v4)](#all-addresses-v4) / [(v6)](#all-addresses-v6)
    - Destinations and Ports - [(v4)](#destinations-and-ports-v4) / [(v6)](#destinations-and-ports-v6)
    - IP Protocol Types - [(v4)](#ip-protocol-types-v4) / [(v6)](#ip-protocol-types-v6)
    - Source and Destination Addresses - [(v4)](#source-and-destination-addresses-v4) / [(v6)](#source-and-destination-addresses-v6)
  - [Protocol Hierarchy](#protocol-hierarchy)
  - [Resolved Addresses](#resolved-addresses)
- [Packet Filtering](#packet-filtering)
  - [Capture Filter Syntax](#capture-filter-syntax)
  - [Display Filter Syntax](#display-filter-syntax)
    - [Comparison Operators](#comparison-operators)
    - [Logical Expressions](#logical-expressions)
    - [Packet Filter Toolbar](#packet-filter-toolbar)
    - [TCP and UDP Filters](#tcp-and-udp-filters)
    - [Application Level Protocol Filters](#application-level-protocol-filters)
      - [HTTP (Example)](#http-example)
      - [DNS (Example)](#dns-example)
  - [Advanced Filtering](#advanced-filtering)
    - [contains](#contains)
    - [matches](#matches)
    - [in](#in)
    - [upper](#upper)
    - [lower](#lower)
    - [string](#string)
    - [Bookmarks and Filtering Buttons](#bookmarks-and-filtering-buttons)

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

##### Source and Destination Addresses (v6)
We can view all _source and destination addresses_ by clicking clicking **Stastics**, expanding **IPv6 Stastics** followed by **Source and Destination Addresses**.

This gives us counts seperated by source or destination. 

### DNS
We can view _DNS_ queries by clicking **Stastics** followed by **DNS**.

Gives us a Breakdown by DNS actions sorted by %.

### HTTP
#### Packet Counter
We can view _HTTP pakcet counter_ by clicking **Stastics**, expanding **HTTP** followed by clicking **Packet Counter**

This gives us a view of packets attributed to various HTTP responses.

#### Requests
We can view _HTTP requests_ by clicking **Stastics**, expanding **HTTP** followed by clicking **Requests**

This gives us a view of http requests by host.

#### Load Distribution
We can view _load distribution_ by clicking **Stastics**, expanding **HTTP** followed by clicking **Load Distribution**

This gives us stats grouped by requests or responses.

#### Request Sequences
We can view _request sequences_ by clicking **Stastics**, expanding **HTTP** followed by clicking **Request Sequences**

This gives us a break down of requests and their sequence.


## Packet Filtering
### Capture Filter Syntax
Capture filters filter by the `byte offset haex values`. To implement the filter click **Capture**, **Capture Filters...**. Select or create a filter and click **OK**.
- Scope:
  - host
  - net
  - port
  - port range
- Direction:
  - src
  - dst
  - src or dst
  - src and dst
- Protocol:
  - ether
  - wlan
  - ip
  - ip6
  - arp
  - rarp
  - tcp
  - udp
- Example:
  - tcp port 22

### Display Filter Syntax
**Note**: You can see the full _Display Filter_ reference at https://www.wireshark.org/docs/dfref/
#### Comparison Operators
- Equal (`eq` / `==`)
  - Example: `ip.src == 127.0.0.1`
- Not Equal (`ne` / `!=`)
  - Example: `ip.src != 192.168.1.254`
- Greater than (`gt` / `>`)
  - Example: `ip.leng > 100`
- Less than (`lt` / `<`)
  - Example: `ip.ttl < 10`
- Greater than or equal to (`ge` / `>=`)
  - Example: `ip.ttl >= 0xFA`
- Less than or equal to (`le` / `<=`)
  - Example: `ip.ttl <= 0xA`

#### Logical Expressions
- and (`AND` / `&&`)
  - Example: `(ip.src == 192.168.1.1) && (ip.src == 192.168.1.254)`
- or (`or` / `||`)
  - Example: `(ip.src == 10.10.10.1) || (ip.src 10.10.10.2)`
- not (`not` / `!`)
  - Example: `!(ip.src == 10.10.10.3)`

#### Packet Filter Toolbar
- Green = Good
- Red = Invalid
- Yellow = Warning

#### Protocol Filters
##### IP Filters
Some common IP filters below
- `ip` (show all packets)
- `ip.addr == 10.10.10.10` (All packets matching `10.10.10.10`)
- `ip.addr == 10.10.10.0/24` (Match all packets within the subnet `10.10.10.0/24`)
- `ip.src == 10.10.10.10` (Match packets where ip `10.10.10.10` is the source)
- `ip.dst == 10.10.10.10` (Match packets where IP `10.10.10.10` is the destination)

##### TCP and UDP Filters
Some common protol filters
- `tcp.port == 80` (Show all TCP `80` ports)
- `tcp.srcport == 443` (Show all TCP source ports `443`)
- `tcp.dstport == 53` (Show all TCP destination ports `53`)
- `udp.port == 53` (Show all UDP `53` ports)
- `udp.srcport == 63553` (Show all UDP destination `63553` traffic)
- `udp.dstport == 5353` (Show all UDP source `5353` traffic)

##### Application Level Protocol Filters
###### HTTP (Example)
- `http` shows all HTTP packets
- `http.response.code == 200` will show all `200` respponse codes
- `http.request.method == "GET"` will show all `GET` reuestes
- `http.request.method == "POST"` will show all `POST` requests

###### DNS (Example)
- `dns` will show all `dns` packets
- `dns.flag.response == 0` show all `dns` requests
- `dns.flags.response == 1` show all `dns` responses
- `dns.qry.type == 1` will show all `dns A` records

##### Display Filter Expressions
There is a full list of expressions under **Analyze** followed by **Display Filter Expression...**

## Advanced Filtering
### contains
Example: `http.server contains "IIS"`

### matches
Example: `http.post matches "\.(php||html)"`

### in
Example: `tcp.port in {53, 5353}`

### upper
Example: `upper(http.server) contains "APACHE"`

### lower
Example: `lower(http.server) contains "php"`

### string
Example: `string(frame.number) matches "[13579]$`

### Bookmarks and Filtering Buttons
Create filter, click book mark item and click **save this filter**. Double click _New display filter_ and give it a great name.
