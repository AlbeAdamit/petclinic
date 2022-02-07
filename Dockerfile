FROM openjdk:8u171-jre-alpine
VOLUME /tmp 
ADD /target/*.jar spring-petclinic-*.jar 
CMD ["java", "-jar", "./spring-petclinic.jar -Dspring-boot.run.profiles=mysql"]
#CMD ["/usr/bin/java", "-jar", "./spring-petclinic-*.jar"] - COMMANDE DE KRYSTEK