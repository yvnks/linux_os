/var/logs/* 
cd /var/log
ls -l 
awk '{print;}' syslog

# systemd journal daemon (journald)
# Without args all collected logs are shown unfiltered.
journalctl

# matches and display all columns of fields if met.
journalctl _SYSTEM_UNIT=avahi.daemon.services

# matches and display both columns of both enteries if met
journalctl _SYSTEM_UNIT=avahi-daemon.services _PID=28097

# if two matches refer to the same field all entry matching the same columns are displayed.
journalctl _SYSTEM_UNIT=avahi-daemon.service _SYSTEM_UNITD=dbus.service

# using the + operator in a sense of a Logica OR.
journalctl _SYSTEM_UNITD=avahi-daemon.services _PID=38094 + _SYSTEM_UNITD=dbus.service

# show all process by the dbus daemon 
journalctl /usr/bin/dbus.daemon

# show all kernel logs from previous boot
journalctl -k -b -1

# show a live log from the system service apache 
journalctl -f -u apache.services

# this will only show me the logs of the current boot.
journalctl -b 

# list all messages of priority level ERROR and worse from the current boot.
journalctl -b -p err

# filter based on time. 
journalctl --since=yesterday

# filter based on time range
journalctl --since=2025-08-08 --until="2025-09-8"

# see long entries on ssh 
journalctl -u ssh.service
