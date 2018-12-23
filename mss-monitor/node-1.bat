set workspace_dir=D:\work-dir\spring-cloud-all-in-one-sample\Micro-Service-Skeleton\mss-monitor
cd %workspace_dir%
call mvn install -Dmaven.test.skip=true
java -jar .\target\mss-monitor-2.0.0.jar --spring.profiles.active=dev