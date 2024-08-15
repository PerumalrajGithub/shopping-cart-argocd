# Use a base image that includes Tomcat
FROM tomcat:9

# Remove the default ROOT application (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your application WAR file into the Tomcat webapps directory
COPY target/shopping-cart-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/shoppingcart.jar

# Expose the default Tomcat port
EXPOSE 8085

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
