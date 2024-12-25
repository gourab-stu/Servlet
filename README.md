## Understanding the Repository structure 
```
.
├── src
│   ├── java
│   └── jsp
│       ├── College
│       ├── JDBC
│       ├── SampleLoginPage
│       └── WBSU
└── WEB-INF
    ├── classes
    └── lib

```
- All <b>servlets (.java files)</b> are in `src/java` folder
- All <b>JSP files</b> are in `src/jsp` folder
- All <b>compiled servlets</b> (.class files) are in `WEB-INF/classes` folder
- The `lib` folder contains all <b>JAR files</b> required for servlets (like <b>servlet-api.jar</b>, <b>mysql and oracle JDBC drivers</b>)


## Steps to execute servlet
- <b>Step 1:</b> Create a folder in the `webapps` directory of the <b>apache-tomcat installation</b> and make a structure like this:
```
.
├── index.html
└── WEB-INF
    ├── classes
    └── web.xml
```

- <b>Step 2:</b> Write your servlets (.java file) anywhere in the folder, just put the compiled bytecode (.class) files in the `WEB-INF/classes/` folder.

- <b>Step 3:</b> Map the servlets in the `web.xml` file.

- <b>Step 4:</b> Start apache-tomcat, open browser and hit [here](127.0.0.1:8081) (considering the configured port is `8081`) and go to the servlet handler, see if it works.


## Resources
- [Click here to download tomcat 9](https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.2/bin/apache-tomcat-11.0.2.exe)

- [Click here to download JRE 17](https://builds.openlogic.com/downloadJDK/openlogic-openjdk-jre/17.0.13+11/openlogic-openjdk-jre-17.0.13+11-windows-x64.msi)

- [Click here to download JDK 17](https://builds.openlogic.com/downloadJDK/openlogic-openjdk/17.0.13+11/openlogic-openjdk-17.0.13+11-windows-x64.msi)