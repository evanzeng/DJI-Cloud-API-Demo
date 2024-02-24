start:
	mvn spring-boot:run

deploy:
	mvn clean package -DskipTests
	scp -P 6322 target/cloud-api-sample-1.8.0.jar evan@kinghighway.com:~/dji-server/dji.jar
	ssh -p 6322 evan@kinghighway.com

sh:
	devbox shell
