#!/bin/bash

IPADDRESS1=172.34.0.2
IPADDRESS2=172.34.0.3
IPADDRESS3=172.34.0.4
IPADDRESS4=172.34.0.5

PORT=11211
THREADS=16
CONCURRENCY=512

../../../memcached_bench/libmemcached-1.0.15/clients/memaslap -s ${IPADDRESS1}:${PORT},${IPADDRESS2}:${PORT},${IPADDRESS3}:${PORT},$IPADDRESS4:${PORT} -c ${CONCURRENCY} -B -T ${THREADS} -t 60s
