# iproute2 tutorial


## ip link

- see all the interfaces:
```bash
ip link show
```
- set an interface up/down:
```bash
ip link set dev <interface name> up/down
```

## ip address

- show all interfaces with IP addresses:
```bash
ip address show
```

- show only interfaces which have an IPv4 address:
```bash
ip -4 address show
```

- 

## ip route

- list all the current routes:
```bash
ip route show
```

## ip tunnel

- list all the current tunnels:
```bash 
ip tunnel show
```

## ip neigh

- show all neighbours:
```bash
ip neigh show
```

## ip netns


## ip rule
