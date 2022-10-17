Installationsanleitung für Profkat-Sample Anwendung
===================================================
Voraussetzungen
---------------
Installation:
- Git
- Maven
- Ant

Betrieb:
- PostgreSQL (Produktion) / H2 (Test, Debug)
- SOLR
- Tomcat

Checkout
--------

- Verzeichnis erstellen
``` cmd
mkdir C:\profkat_sample\git
cd C:\profkat_sample\git
```

- Repos auschecken / in main-Branch wechseln

git clone https://github.com/MyCoRe-Org/professorenkatalog-sample.git
``` cmd
cd professorenkatalog-sample
git checkout production

Build
-----
``` cmd
mvn clean install
```


Configuration
-------------
- Datenbank H2 (zum Testen ...)
  - Version 1.4.199 verwenden (letzte aktuell mit MyCoRe funktionierende Version)
  - JAR-Datei herunterladen
    - via GUI: https://search.maven.org/artifact/com.h2database/h2/1.4.199/jar
    - direkt: https://repo1.maven.org/maven2/com/h2database/h2/1.4.199/h2-1.4.199.jar
  - in Config-Verzeichnis im Unterordner /lib ablegen
  
  - persistence.xml (H2-Konfiguration für MyCoRe)
    <property name="javax.persistence.jdbc.driver" value="org.h2.Driver" />
    <property name="javax.persistence.jdbc.url" value="jdbc:h2:file:c:/Users/mcradmin/AppData/Local/MyCoRe/profkat_sample/data/h2/mycore;AUTO_SERVER=TRUE" />
  - camunda.cfg.xml (H2-Konfiguration für BPM-Engine)
    <property name="jdbcDriver" value="org.h2.Driver" />
    <property name="jdbcUrl" value="jdbc:h2:file:c:/Users/mcradmin/AppData/Local/MyCoRe/profkat_sample/data/h2/bpm" />
  
  
  
  
  