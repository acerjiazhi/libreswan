/testing/guestbin/swan-prep --x509
ipsec pk12util -W foobar -K '' -i /testing/x509/pkcs12/mainca/north.p12
ipsec start
../../guestbin/wait-until-pluto-started
ipsec auto --add road
echo "initdone"
