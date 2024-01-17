# Use the official Tomcat 8 image as the base image
FROM tomcat:8

# Set the maintainer information
LABEL maintainer="Curtis Kruse <curtis.krus@efre.net>

# Copy the WAR file from the target directory to the webapps directory of Tomcat
COPY target/spring-boot-deployment.war C:\Users\t5941ck\Desktop\apache-tomcat-9.0.69\apache-tomcat-9.0.69\webapps

# Expose the default Tomcat port (8088)
EXPOSE 8088

# Start Tomcat
CMD ["catalina.sh", "run"]
