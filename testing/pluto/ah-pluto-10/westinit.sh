/testing/guestbin/swan-prep
ipsec start
../../guestbin/wait-until-pluto-started
ipsec whack --impair timeout-on-retransmit
ipsec auto --add westnet-eastnet-ah
echo "initdone"
