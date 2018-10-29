#!/bin/bash

TC=/sbin/tc

IF=enp0s3

DNLD=1mbit
UPLD=1mbit

IP=192.168.1.164

U32="$TC filter add dev $IF protocol ip parent 1:0 prio 1 u32"

start() {
  $TC qdisc add dev $IF root handle 1: htb default 30
  $TC class add dev $IF parent 1: classid 1:1 htb rate $DNLD
  $TC class add dev $IF parent 1: classid 1:2 htb rate $DNLD
  $U32 match ip dst $IP/32 flowid 1:1
  $U32 match ip src $IP/32 flowid 1:2

}

stop() {
  $TC qdisc del dev $IF root

}

restart() {
  stop
  sleep 1
  start

}

show() {
  $TC -s qdisc ls dev $IF
}


case "$1" in 

  start)

    echo "Starting bandwidth shaping: "
    start
    echo "DONE!"
    ;;

  stop)

    echo -n "Stopping bandwidth shaping: "
    stop
    echo "DONE!"
    ;;
  show)

    echo "Status of bandwidth shaping:"
    show
    echo "DONE!"
    ;;

  *)
    pwd=$(pwd)
    echo "Usage: tc.bash {start|stop|restart|show}"
    ;;

esac

exit 0
