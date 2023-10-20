---SQLAlias und Instanzen

--Man kann SQL Server mehrfach auf einen Rechner installieren: -->Instanzen 
--Instanzen sind absolut isloiert:
--eigene Binärdateien
--eigene SystemDatenbanken
--eig Sysadmin und Rechte
--

--Instanzen besitzen anderen Port .. welchen ??

--Zugriff per Name ohne Angabe des Ports

--SQL Browser!!

--SQL Brow3ser ist der Vermitlller (UDP 1434) .. 
--Dieser vermittlet dem Client den Port der benannten Instanz

--Jede benannte Instanz hat einen random Port!

--ohne Browser Dienst müsste man jedem Client den Port mitteilen 
-- Angabe bei Servername: Rechnername\Instanz,PortderInstanz
--> oder beim Client einen Eintrag im SQL Server Konfiugurationsmanager, sofern dieser vorhanden ist
-->SQL Alias 
Angabe: ALiasName
Server: Rechnername der Instanz
Port:  der Instanz