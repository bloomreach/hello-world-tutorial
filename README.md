# BloomReach Experience Manager Tutorial: Hello World

## Full tutorial:
[https://www.onehippo.org/trails/deep-dive/hello-world.html](https://www.onehippo.org/trails/deep-dive/hello-world.html)

## Running locally

This project uses the Maven Cargo plugin to run Essentials, the CMS and site
locally in Tomcat.
From the project root folder, execute:

    mvn clean verify
    mvn -P cargo.run

Access the applications at the following URLs:

* Essentials: `http://localhost:8080/essentials`
* CMS: `http://localhost:8080/cms`
* Website: `http://localhost:8080/site`

Logs are located in `target/tomcat9x/logs`.

## Best Practice for development

Use the option `-Drepo.path=/some/path/to/repository` during start up. This
will avoid your repository to be cleared when you do a `mvn clean`.

For example start your project with:

    mvn -P cargo.run -Drepo.path=/home/usr/tmp/repo
    
## Automatic Export

Automatic export of repository changes to the file system is turned on by
default. To control this behavior, log into `http://localhost:8080/cms/console`
and press the "Enable/Disable Auto Export" button at the top right. To set this
as the default for your project edit the file
`./repository-data/application/src/main/resources/hcm-config/configuration/modules/autoexport-module.yaml`
