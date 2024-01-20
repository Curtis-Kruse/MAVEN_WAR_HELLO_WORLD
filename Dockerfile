# Use the official Tomcat 8 image as the base image
FROM tomcat:8

# Set the maintainer information
LABEL maintainer="Curtis Kruse <curtis.krus@efre.net>"

# Copy the WAR file from the target directory to the webapps directory of Tomcat
ADD target/spring-boot-deployment.war /usr/local/tomcat/webapps

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
