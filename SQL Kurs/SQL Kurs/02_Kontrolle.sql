--CPU HDD RAM

--Aktuelle Hardware:
--4 Kerne und 16GB RAM  und Pfade ?

--Eingestellte Werte

--MIN RAM 0 da keine Konkurrenz
--MAX RAM OS - (4-10) GB  13 GB auch ok
 
------------------------------------------------------
 --TEMPDB Optimierung
--Anzahl tempdbDateien: sollten 4 sein
--alle Dateien gleich groﬂ

-- CPU Optimierung
--Kostenschwellwert : 5 ..Nein!! besser 25 bis 50..testen 


--HDD Optimierung
--Pfade: Trennen der DB Daten und Logdateien.. 
--nur 1 HDD vorhanden :-(




--Messungen auf DB 
--QueryStore aktivieren.. macht unter anderem auch das hier:
--set statistics io, time on 
--Seiten , Dauer ms  CPU ms  
--Pl‰ne Weg von der Quelle zum Ergebnis


