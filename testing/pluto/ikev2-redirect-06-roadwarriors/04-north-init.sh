/testing/guestbin/swan-prep --x509
ipsec start
../../guestbin/wait-until-pluto-started
ipsec auto --add north-east
ipsec whack --impair revival
echo initdone
