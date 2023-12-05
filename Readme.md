# WebApp-Struts2
* Apache Struts2
* Gentelella Admin

## Description
Web Application with Struts2

## Getting Started
### Dependencies
* Java 1.8
* Oracle JDK 1.8.0_052
* Maven 3.5.2
* Apache Tomcat 7.0

### Executing program
* Run
```
mvn clean tomcat7:run
```
* Access on browser
```
http://{host}:{port}/{application-name}/
```

### Deploy
* Change connection profile
```
package id.util.db;

public class DBEngine {
  ....
  JFileStream fileStream = new JFileStream("jdbc.properties");
  ....
}
```
* Build
```
mvn clean package
```
* Upload war file to Web Server

## Help

If has errors
```
{maven_command} -X
```
Re-run to full debug logging

## Authors
* Boenkkk

## Acknowledgments
* [README-Template.md](https://gist.github.com/DomPizzie/7a5ff55ffa9081f2de27c315f5018afc)