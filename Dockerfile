# Tomcat 10.1 이미지 사용 (기본적인 Tomcat 10 이미지)
FROM tomcat:10.1

# WAR 파일을 Tomcat의 webapps 디렉토리에 복사
COPY target/CoupangSpring.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat 서버 실행
EXPOSE 8080
CMD ["catalina.sh", "run"]
