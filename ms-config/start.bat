set workspace_dir=D:\work-dir\spring-cloud-all-in-one-sample\Micro-Service-Skeleton\ms-config
cd %workspace_dir%
call mvn install -Dmaven.test.skip=true
java -jar .\target\ms-config-2.0.0.jar