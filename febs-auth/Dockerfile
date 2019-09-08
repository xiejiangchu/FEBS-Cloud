FROM openjdk:8u212-jre
MAINTAINER MrBird 852252810@qq.com

COPY ./target/febs-auth-1.0-SNAPSHOT.jar /febs/febs-auth-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-Xmx256m", "-jar", "/febs/febs-auth-1.0-SNAPSHOT.jar"]