# Restore crontab
cat "crontab_log.txt" | grep "(username)" | grep -o "CMD.*" | sort | uniq