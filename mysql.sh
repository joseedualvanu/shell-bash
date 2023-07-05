
# command to save a query result from mysql database
mysql --host="host" --user="user" --password="pass" "schema" -N -e "query"  | sed 's/\t/;/g' > $PATHTXT/"file_name.txt"