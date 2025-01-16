# Tomcat 기반 이미지 사용
FROM tomcat:9.0

# WAR 파일을 Tomcat의 webapps 디렉토리에 복사
COPY target/CoupangSpring.war /usr/local/tomcat/webapps/

# Tomcat 서버 실행
CMD ["catalina.sh", "run"]
