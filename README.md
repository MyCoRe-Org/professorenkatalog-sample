
# Beispiel-Professorenkatalog

## Installation Instructions

* Clone this repository
* Run `mvn clean install`
* Unzip profkat_sample-cli from the directory `profkat_sample-cli/target/` to user defined cli directory
* Change to cli directory
* Run `bin/profkat_sample.sh create configuration directory`
* You now have a config dir `~/.mycore/profkat_sample`
* Configure your database connection in `~/.mycore/profkat_sample/resources/META-INF/persistence.xml`
    * For the start an embedded datbase like `h2` is sufficient, it's enabled by default
    * Change the path to the database URL in the property `javax.persistence.jdbc.url` from `jdbc:h2:file:/path/to/.mycore/myapp/data/h2/mycore;AUTO_SERVER=TRUE` and replace `/path/to` with the location of your home directory (`~`)
* Perhaps you need to download a JDBC driver for your database to `~/.mycore/profkat_sample/lib/`
* Run cli command `bin/profkat_sample.sh process config/setup-commands.txt to load default data`
* Go to `profkat_sample-webapp`
* Install solr with the command: `mvn solr-runner:copyHome`
* Run solr with the command `mvn solr-runner:start` (End with `mvn solr-runner:stop`)
* Run Jetty with the command: `mvn jetty:run` (End with ctrl+c)
* Fast rebuild and Jetty restart `mvn clean install && cd profkat_sample-module && mvn jetty:run` (End with ctrl+c)