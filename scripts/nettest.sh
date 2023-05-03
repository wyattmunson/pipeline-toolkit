#!/bin/bash

echo "======================="
echo "      NETWORK TEST     "
echo "======================="

echo "======================="
echo "INTERNAL NETWORK CONFIG"
echo "======================="

echo "======== TEST ========="
echo "== TESTING: Current network interface parameters..."
ifconfig

echo "======== TEST ========="
echo "== TESTING: Current route table..."
netstat -rn

echo "======================="
echo "EXTERNAL NETWORK CONFIG"
echo "======================="

echo "======== TEST ========="
echo "== TESTING: Outbound internet connectivity..."
if curl -s http://google.com >/dev/null
then
  echo "OK: Online"
else
  echo "FAIL: No outbound internet connectivity"
fi

echo "======== TEST ========="
echo "== TESTING: DNS Resolution for $1..."
dig +short $1

echo "======== TEST ========="
echo "== TESTING: HTTP request to $1..."
curl -I $1

echo 