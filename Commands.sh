# Restore crontab
cat "crontab_log.txt" | grep "(username)" | grep -o "CMD.*" | sort | uniq

# Find files (logs) with a name
grep -Ril "name"

# delete folder and subfolders
rm -rf folder_name

# copy folder and subfolder (backup)
cp -r -u <folder_name> <folder_name_backup>`date +"%Y%m%d"`