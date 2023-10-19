/*


 Volumewartungstask 
 = reine Windows Sicherheitseinstellung
 


jede Vergrößerung verbraucht eigtl die doppelte Schreibarbeit
da Windows zuerst die Dateien vergrößert und mit 0 beschreibt
eigtl ein Sicherheitsfeature: Lokaler Sicherheitsrichtlinien.. 
Zuweisen von Benutzerrechten
----------------------
0101010110101111111111
----------------------

aktiviert man den Datenvol..wa..task... dann kann SQL Server eigenständig vergrößeren
ohne vorher ausnullen-- schneller,

-->IO reduzieren! Aber einem guten Admin ist das wurst! ;-) Siehe DB Settings
--ausser bei BACKUP RESTORE


Frage nach Verzeichnissen  :
Trenne Log von Daten physikalisch (HDDs) !!
Wirklich ideal ? 



MAXDOP = Anzahl der log Prozessoren (max 8)
gibt an , wieviele Kerne verwendet eine Abfrage

TempDB
#tabellen, Zeilenversionierung
IX Wartung, Auslagerungen beim Sortieren etwa
Cursor

Anzahl der Datendateien = Anzahl der Kerne  max 8 
Traceflags 1117 + 1118

Mixed Extents --> Uniform Extents
Mehrere Tabellen könne im gleiche Block liegen, 
aber nur ein Thread kann zugreifen

-T1117 Uniform Extents... kein gleichzeitiger Zugriff mehr auf denselben Block, da jede Tabelle einen eig block belegt
-T1118 immer gleich große Dateien.. greife nie in den Mechanismus ein, der wird sonst ausser Kraft gesetzt


--Arbeitspeicher. 
--Setup schlägt für SQL einen max Speicher vor, um im worst Case nicht den gesamten RAM zu belegen
--Das OS braucht auch Luft zum atmen... das Setup berücksichtigt die Umgebung (OS)
--Sharepoint: Wenn auf dem Server 95% Speicherauslastung, dann stellt SP Dienste
--Begrenze den SQL Server immer im Bereich MAX RAM... (OS)


--MAX Speicher immer einstellen
--MIN Speicher nur bei Konkurrrenz (weiterer Instanz) sinnvoll
-- der mind RAM Wert wird erst belegt, wenn SQL Daten entsprechend abgelegt hat.

--AUFGABEN

--Findest du die Werte aus dem Setup im SQL Server wieder?
--MAXDOP = 4
--im Setup MAXDOP 8

--tempdb 4 dateien
--Das Setup hätte 8 angelegt

--VM hat 2 CPUs und hat 4 GB RAM

--wenn man nachträglich die VM anpasst, dann sollten eben auch die Werte im SQL angepasst
--werden


