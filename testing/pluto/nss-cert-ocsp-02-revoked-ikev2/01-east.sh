/testing/guestbin/swan-prep --x509
ipsec certutil -D -n west
#normal test things:
ipsec start
../../guestbin/wait-until-pluto-started
ipsec auto --add nss-cert-ocsp
ipsec auto --status |grep nss-cert-ocsp
echo "initdone"
