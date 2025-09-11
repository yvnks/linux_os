#!/usr/bin/bash
DIRLOC=/tmp/log_list_file.txt

mapfile -t DIRARR < <(ls -l ~) # -t flag removes trailing lines. 
echo "The script was run at $(date)" >> $DIRLOC
printf "%s\n" "${DIRARRAY[@]}" >> "$DIRLOC"

5 * * * * /home/j1munii/Documents/itmo356/scripts/cron_job.sh

