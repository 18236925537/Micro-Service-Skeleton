@echo off
chcp 65001
set workspace_dir=D:\work-dir\pure-smile\spring-cloud\spring-cloud-examples\eureka-producer-consumer

rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem                              处理项目spring-cloud-consumer-basic  
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
cd /d %workspace_dir%\spring-cloud-consumer-basic
call mvn install -Dmaven.test.skip=true
 
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem                              处理项目spring-cloud-eureka-basic
rem -------------------------------------------------------------------  
rem ------------------------------------------------------------------- 
cd /d %workspace_dir%\spring-cloud-eureka-basic
call mvn install -Dmaven.test.skip=true
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem                              处理项目spring-cloud-producer-basic
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
cd /d %workspace_dir%\spring-cloud-producer-basic
call mvn install -Dmaven.test.skip=true
rem                              启动基础服务
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
start cmd /k "java -jar %workspace_dir%\spring-cloud-eureka-basic\target\spring-cloud-eureka-basic-0.0.1-SNAPSHOT.jar"
ping -n 15 127.1>nul
start cmd /k "java -jar %workspace_dir%\spring-cloud-consumer-basic\target\spring-cloud-consumer-basic-0.0.1-SNAPSHOT.jar"
ping -n 15 127.1>nul
start cmd /k "java -jar %workspace_dir%\spring-cloud-producer-basic\target\spring-cloud-producer-basic-0.0.1-SNAPSHOT.jar"
ping -n 15 127.1>nul
pause 
