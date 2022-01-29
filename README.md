# MMM-ImageSlideshow-addon
Fortune-Sprüche auf eigene oder auf aktuelle Webcam Bildern gelegt mit Ramen für den Maggic-Mirror.
fortune-de = https://de.wikipedia.org/wiki/Fortune_(Computerprogramm)
z.B. für die Modulanwendung MMM-ImageSlideshow
Das script fortune_Image.sh,
den Ordner exampleImages_null (alle zukünftigen Bilder müssen chronologisch Foto_15.png bis z.B Foto_888.png)

<img src="https://github.com/eyedat/MMM-ImageSlideshow-addon/blob/main/animated_cam_gif/Fortune-script_eye.gif?raw=true" alt="">CAM_downloader-Fortune-script_Beispiel.gif


/home/pi/MagicMirror/modules/MMM-ImageSlideshow/fotune.sh
/home/pi/MagicMirror/modules/MMM-ImageSlideshow/font
/home/pi/MagicMirror/modules/MMM-ImageSlideshow/exampleImages_null

Die ersten 14 Bilder können von eigenen Webcams oder z.B. aus dem Internet geladen werden.
Die im script geschriebene Links sind nur beispiele und sollten nicht verwendet werden.
Bild1: Eine Aldi Webcam das Modell Maginon IPC-100AC.
* news="xxx" # Bild 2
* paris="xxx" # Bild 3 ... z.B: paris="https://cs3.wettercomassets.com/thumbnails/variants/58b6c68dcebfc036028b457d/700_394.jpg?_=1642941280"
* Ahlbeck="xxx" # Bild 4
* Hamburg="xxx" # Bild 5
* Bremen="xxx" # Bild 6
* Kiel="xxx" # Bild 7
* Mallorca="xxx" # Bild 8
* Berlin="xxx" # Bild 9
* Oldenburg="xxx" # Bild 10
* Dangast="xxx" # Bild 11
* Friedrichskoog="xxx" # Bild 12
* Wien="xxx" # Bild 13
* Heidelberg="xxx" # Bild 14

Im original Ordner "exampleImages" können alle Bilder gelöscht werden.
Das script erstellt eigene Bilder aus den Original vorlagen des Ordners: exampleImages_null

Beispiel: /home/pi/MagicMirror/modules/MMM-ImageSlideshow/exampleImages/Fotos_$zaehler.png
#         Installation:

* -1.-

        sudo apt-get update
        sudo apt install imagemagick fortunes-de
        
* -2.-

Bei bedarf die Schriften... (aus lizensgründen ist der Ordner: font nicht gefüllt)
Hier könnte man den Inhalt des Orners füllen: 
                                                       https://www.1001freefonts.com/ 
                                                       
                                                   
                                                       
        sudo cp -r $pfad/font/* /usr/share/fonts/truetype/

* -3.-

Um alle 15 Minuten neue Texte unter Fortune zu generieren
und diese in die Bilder zu schreiben,
diesen cronjob einrichten.

        sudo crontab -e

" mit nano in die letzte Zeile einfügen" 

        */15 * * * * sudo --user=pi sh $pfad/fortune_Image.sh
         
"speichern str x"
Und zuletzt den Cronjob neustarten

        sudo crontab -l
        sudo service cron reload
