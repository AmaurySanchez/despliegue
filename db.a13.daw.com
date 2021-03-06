; BIND reverse data file for empty rfc1918 zone
;
; DO NOT EDIT THIS FILE - it is used for multiple zones.
; Instead, copy it, edit named.conf, and use that copy.
;
$TTL    86400
@       IN      SOA     ns.a13.daw.com root.localhost. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                          86400 )       ; Negative Cache TTL
;

@		 	IN	NS	ns.a13.daw.com.
ns.a13.daw.com.       	IN      A      192.168.3.213
amaury		 	IN 	A	192.168.3.13
debian8          	IN      A       192.168.3.213
www       		IN      CNAME   debian8.a13.daw.com.

a06.a13.daw.com. 	IN NS	 ns.a06.a13.daw.com.
ns.a06.a13.daw.com. 	IN A 	 192.168.3.206
a14.a13.daw.com.	IN NS	ns.a14.a13.daw.com.
ns.a14.a13.daw.com.	IN A	192.168.3.214
