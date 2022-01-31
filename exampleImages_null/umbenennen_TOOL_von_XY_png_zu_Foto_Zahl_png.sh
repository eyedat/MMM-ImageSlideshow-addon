#!/bin/sh
# zum vorbereiten fürs Mirror-script und Umbenenn von zufälligen png Dateinamen
PWD=`pwd`

ab=16 # wenn Die erste Datei aus dem script produziert Fotos_16.png heisen wird und die Eigenen Bilder 17 aufwärts werden sollen...

for f in *.png; do 
ab=`expr $ab + 1`
echo $f " vorbereitet für:"$ab
mv $f Fotos_$ab.png
done

exit 0
