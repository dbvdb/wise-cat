
+ using tbf:

```bash
tc qdisc add dev <nic> root tbf rate 1mbit burst 10kb latency 70ms
```

+ using htb to limit http traffic:
```bash
tc qdisc add dev <nic> root handle 1: htb default 30
tc class add dev <nic> parent 1: classid 1:1 htb rate 1mbit ceil 10kbps prio 0
tc filter add dev <nic> parent 1: prio 0 protocol ip handle 1 fw flowid 1:1
```
