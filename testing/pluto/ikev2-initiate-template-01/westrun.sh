# --up will fail because of right=%any
ipsec auto --up westnet-eastnet-ipv4-psk-ikev2
# Now we specify the remote ip, so the connection knows how to initiate
ipsec auto --up westnet-eastnet-ipv4-psk-ikev2 --remote-host 192.1.2.23
../../guestbin/ping-once.sh --up -I 192.0.1.254 192.0.2.254
echo done
