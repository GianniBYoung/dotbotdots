# wired interfaces

ip addr add 192.168.1.1/24 dev em1 -> add an address to a device
ip addr add 192.168.1.1/24 broadcast 192..... dev em1 -> add an ip address and specific broadcast address to a device
ip addr -> show information for all address
ip link show dev em1 -> show info for stated device
ip a -> ip addr

# wireless interfaces
similar but with iw

# surrounding network commands
ip neigh(bour) -> displays neighbour objects
  * replaced arp command
