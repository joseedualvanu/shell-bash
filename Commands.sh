# Restore crontab
cat "crontab_log.txt" | grep "(username)" | grep -o "CMD.*" | sort | uniq

# Find files (logs) with a name
grep -Ril "name"

# search for a specific word (or pattern) within the contents of a text file
grep -n "word" file_name.txt

# delete folder and subfolders
rm -rf folder_name

# copy folder and subfolder to a backup with date in the name
cp -r -u folder_name folder_name_backup`date +"%Y%m%d"`

#Combining tools

#Separo por comas y me quedo con la primer columna
cut -d , -f 1 seasonal/winter.csv seasonal/spring.csv seasonal/summer.csv seasonal/autumn.csv

#Idem, y me quedo con todas las filas a excepcion de las que tengan Tooth
cut -d , -f 2 seasonal/summer.csv | grep -v Tooth

#Cuento la cantidad de lineas de todos los archivos
wc -l seasonal/*.csv

#Idem, ademas que las orden y me quedo con la primer fila
wc -l seasonal/*.csv | grep -v total | sort -n | head -n 1

#Batch processing
#Hago un loop dentro de los archivos e imprimo sus nombres
for filename in seasonal/*.csv; do echo $filename; done

#Idem, y me quedo con las dos primeras filas y luego con la ultima
for file in seasonal/*.csv; do head -n 2 $file | tail -n 1; done

#Creating new tools
#Comand history, te dice los comandos que usaste

for filename in $@do
    cut -d , -f 1 @filename | grep -v Date | sort | head -n 1
    cut -d , -f 1 @filename | grep -v Date | sort | tail -n 1
done
