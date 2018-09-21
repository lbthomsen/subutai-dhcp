#
# Regular cron jobs for the subutai-dhcp package
#
0 4	* * *	root	[ -x /usr/bin/subutai-dhcp_maintenance ] && /usr/bin/subutai-dhcp_maintenance
