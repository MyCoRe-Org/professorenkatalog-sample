
# Beispiel-Professorenkatalog

## Installation Instructions

* clone repository
* run `mvn clean install`
* unzip profkat_sample-cli to user defined cli directory
* change to cli directory
* run `bin/profkat_sample.sh create configuration directory`
* you now have a config dir `~/.mycore/profkat_sample`
* configure your database connection in `~/.mycore/profkat_sample/resources/META-INF/persistence.xml`
* perhaps you need to download a driver to `~/.mycore/profkat_sample/lib/`
* run cli command `bin/profkat_sample.sh process config/setup-commands.txt to load default data`
* Go to profkat_sample-webapp
* Install solr with the command: `mvn solr-runner:copyHome`
* Run solr with the command `mvn solr-runner:start` (End with `mvn solr-runner:stop`)
* Run Jetty with the command: `mvn jetty:run` (End with ctrl+c)
* Fast rebuild and Jetty restart `mvn clean install && cd profkat_sample-module && mvn jetty:run` (End with ctrl+c)