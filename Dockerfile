FROM openjdk:26-oraclelinux8

COPY target/jenkinsCiCd.jar /tmp/jenkinsCiCd.jar

CMD ["java", "-jar", "/tmp/jenkinsCiCd.jar"]
