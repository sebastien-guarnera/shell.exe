#last va chercher automatiquement les infos dans le fichier wtmp, puis grep -c
#fait un décompte des apparitions de la variable USER (qui renvoit le nom de la
#session en cours)dans le résultat de last.
#echo$() affiche le résultat.
echo $(last|grep -c "$USER") > /home/sebastien/Bureau/Shell.exe/Job08/number_connection-`date +%d-%m-%Y-%H:%M`.txt 
cd /home/sebastien/Bureau/Shell.exe/Job08
#tar -créer vérifier fichier chemin+nom_de_l'archive.tar fichier_source
tar -cvf /home/sebastien/Bureau/Shell.exe/Job08/number_connection-`date +%d-%m-%Y-%H:%M`.tar number_connection-`date +%d-%m-%Y-%H:%M`.txt
rm number_connection-`date +%d-%m-%Y-%H:%M`.txt
mv *.tar Backup/.
