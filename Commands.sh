# Restore crontab
cat "crontab_log.txt" | grep "(username)" | grep -o "CMD.*" | sort | uniq

# Find files (logs) with a name
grep -Ril "name"

