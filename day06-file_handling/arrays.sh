#!/bin/bash
servers=(web1 web2 web3)
 echo "checking server.. ${servers[0]}"
 echo "checking server.. ${servers[1]}" 
 echo "checking server.. ${servers[2]}" 
 echo "servers running.. ${servers[*]}"
 servers+=(db1 db2 db3 )
 echo "initialising new servers.. ${servers[*]}"
 
