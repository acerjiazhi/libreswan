ipsec look
: ==== cut ====
ipsec auto --status
ipsec whack --shutdown
: ==== tuc ====
if [ -n "`ls /tmp/core* 2>/dev/null`" ]; then echo CORE FOUND; mv /tmp/core* ./; fi
if [ -f /sbin/ausearch ]; then ausearch -m avc -ts recent | grep -v 'no matches'; fi
: ==== end ====
