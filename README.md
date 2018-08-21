# SCCER FEEBD Joint Activity Project in Rolle and Mont-sur-Rolle

The repo contains a series of R markdown scripts for estimating the energy demand of - and potential energy suplies for - all 1600 buildings in Rolle and Mont-sur-Rolle. Energy demand is covered with scripts labeled with numbers <10 (e.g. 01_rolle_buildings), while energy suply is computed in scripts with numbers >=10 (e.g. 10_rolle_wind).

All results are stored in the output folder and subfolders numbered according to the script label. In order to run the scripts on your own computer, the correct path to the HSLU T-directory has to be defined in the header of each script.

## Description of individual scripts

* 01_rolle_buildings.Rmd: In diesem Skript werden die Gebäude anhand von Informationen aus dem GWR den SIA Gebäudetypen zugeordnet.

* 02_rolle_siaClassification.Rmd: In diesem Skript werden die Gebäude anhand von Informationen aus dem GWR den SIA Gebäudetypen zugeordnet.

* 03_rolle_energyDemand.Rmd: In diesem Skript wird die Nutzenergie pro Gebäude mit unterschiedlichen Methoden geschätzt. Zum einen wird eine Methode des AWEL verwendet. Zum anderen werden Berechnung von <Stefan Schneider> hinzugenommen.

* 04_rolle_uValuesAndMeasures.Rmd: Für jedes Gebäude werden die Breite, Länge und die Ausrichtung berechnet. Die Ausrichtung wird für die längere Achse des Gebäudes in Grad angegeben. Die Ausrichtung nimmt nur Werte zwischen 0 und 90 Grad an: 0 = N-S (oder S-N) und 90 = E-W (oder W-E).

* 05_rolle_kbob.Rmd: In diesem Skript wird die in 03_rolle_energyDemand geschätzte Nutzenergie über den Nutzungsgrad in Endenergie, und folglich anhad des KBOB Faktors in Primärenergie umgewandelt. 

* 06_rolle_exportDemand.Rmd: In diesem Skript werden die Informationen aus den vorangegangenen Skripten so aufbereitet, dass nur noch die zentralen Attribute vorhanden sind.   

* 10_rolle_wind.Rmd: In diesem Skript wird eine Abschätzung des Windpotentials für Rolle und Mont-sur-Rolle gemacht. Dabei werden nur die Zone hohen Windpotentials berücksichtigt: "Die Hauptpotenzialgebiete sind durch den Bund unter Berücksichtigung hoher Windenergieerträge (Basisdaten Windatlas Schweiz, www.windatlas.ch), der wichtigsten Bundesinteressen und einer ausreichenden räumlichen Konzentration ermittelt worden". Es wird daher davon ausgegangen, dass bloss diese Gebiete für eine erweiterte Analyse in Frage kommen. Alle Berechungen in diesem Skript basieren auf den Angaben von https://wind-data.ch/.

* 11_rolle_wind.Rmd: In diesem Skript wird für ein Einzugsgebiet von 20km rund um Rolle der Zugang zum Waldbestand quantifiziert. Die 20km sind als sinnvolles Distanzmass dem Bericht des Kantons Wadt zur Nutzung von Holz zur Energiegewinnung entnommen ([Link](https://www.vd.ch/themes/environnement/energie/energies-renouvelables-bois-hydraulique-geothermie-profonde-energies-eolienne-et-solaire/bois-energie/)). Im Bericht wird auch das Interesse des Kantons betont, die Energiegewinnung aus Holz in Zukunft zu fördern.

* 12_rolle_wind.Rmd: In diesem Skript wird für jedes Gebäude in Rolle die Distanz und der Höhenunterschied zum See berechnet. Als Rechungsgrundlage dienen ein Digitales Höhenmodell, DHM25 von Swisstopo ([Link](https://www.swisstopo.admin.ch/de/home/products/height/dhm25.html)), und ein aufbereiteter Raster Datensatz, welcher die kontinuierliche Distanz zum Lac du Leman als Rasterwerte enthält.   

* 13_rolle_geothermie.Rmd: In diesem Skript wird das Potential der Geothermie abgeschätzt. In einer relativ kleinen Zone ist der Nutzen von Geothermie nicht erlaubt. Im Rest der Gemeinde, bezeichnet mit den Zonen "Limitation" und "Autorisation", darf grundsätzlich bis zu 300m tief gebohrt werden. Eine Bewilligung ist natürlich in jedem Fall nötig.      

* 14_rolle_solar.Rmd: In diesem Skript werden die PV Poteniale von Lionel Bloch eingelesen und den Gebäuden zugewiesen.   

* 99_driver.R: Ein Driver um alle RMD automatisch zu kompilieren und die Resultate auf das T:/ Laufwerk zu kopieren.

* 999_helpers.R: Ein paar Paramter und Helper-Funktionen, welche in den meisten Skripten verwendet werden. Unter anderem auch der Pfad zu den Daten auf dem T:/ Laufwerk.   

## Authors

* **Curdin Derungs** - *Initial work* - [curdon](https://github.com/curdon)

## License

This project and all incorporated data is property of the HSLU and can only be used upon request.

