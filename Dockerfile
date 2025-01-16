# Tomcat 10.x 이미지를 기반으로 사용
FROM tomcat:10.1.33-jdk17-slim

# WAR 파일을 Tomcat의 webapps 디렉토리에 복사
COPY target/CoupangSpring.war /usr/local/tomcat/webapps/

# Tomcat 포트를 외부로 노출
EXPOSE 8080

# Tomcat 서버 실행
CMD ["catalina.sh", "run"]
