# NexaBank 


```bash
$ ./gradlew -x test build
```

You can also test the application using the embedded tomcat server. First edit the `application.properties` and configure the database to use and then run the following command from the interactive shell.

```bash
$ ./gradlew --no-daemon run
```

## Eclipse

The application project can be imported in Eclipse IDE. In order to import the project, you first have two options:

1. Using buildship 2.1 plugin

    ```bash
    $ ./gradlew classes copyWebapp
    ```

    This will make sure all the required classes are generated and resource required for web ui are copied.

    From eclipse, import the project using `File -> Import... -> Gradle -> Existing Gradle Project` menu.

2. Generate eclipse project files like this:

    ```bash
    $ cd /path/to/open-platform-demo
    $ ./gradlew classes copyWebapp cleanEclipse eclipse
    ```

    This will generate eclipse project files for the application project and all it’s submodules.

    From the eclipse, import the projects using `File -> Import... -> General -> Existing Projects into Workspace` menu. In the import project wizard check the Search for nested projects so that all the submodules are also imported.

You can also run the application inside eclipse using eclipse WTP tools. Create a tomcat8.5 server add the open-platform-demo module and run the server.
