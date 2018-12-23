@echo off
chcp 65001
set workspace_dir=D:\work-dir\spring-cloud-all-in-one-sample\Micro-Service-Skeleton

rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem           处理项目mss-registry
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
cd /d %workspace_dir%\mss-registry
call mvn clean
call mvn install -Dmaven.test.skip=true
 
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem            处理项目ms-config
rem -------------------------------------------------------------------  
rem ------------------------------------------------------------------- 
cd /d %workspace_dir%\ms-config
call mvn clean
call mvn install -Dmaven.test.skip=true
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem            处理项目mss-oauth
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
cd /d %workspace_dir%\mss-oauth
call mvn clean
call mvn install -Dmaven.test.skip=true
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem            处理项目mss-gateway
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
cd /d %workspace_dir%\mss-gateway
call mvn clean
call mvn install -Dmaven.test.skip=true
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem            处理项目mss-monitor
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
cd /d %workspace_dir%\mss-monitor
call mvn clean
call mvn install -Dmaven.test.skip=true
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem            处理项目mss-resource
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
cd /d %workspace_dir%\mss-resource
call mvn clean
call mvn install -Dmaven.test.skip=true
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------  
rem            处理项目mss-upme
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
cd /d %workspace_dir%\mss-upms
call mvn clean
call mvn install -Dmaven.test.skip=true
rem    
rem -------------------------------------------------------------------  
rem -------------------------------------------------------------------
span=15
start cmd /k "java -jar %workspace_dir%\mss-registry\target\mss-registry-2.0.0.jar --spring.profiles.active=node-1"
ping -n %span% 127.1>nul
start cmd /k "java -jar %workspace_dir%\mss-registry\target\mss-registry-2.0.0.jar --spring.profiles.active=node-2"
ping -n %span% 127.1>nul
start cmd /k "java -jar %workspace_dir%\ms-config\target\ms-config-2.0.0.jar --spring.profiles.active=dev"
ping -n 60 127.1>nul
start cmd /k "java -jar %workspace_dir%\mss-oauth\target\mss-oauth-2.0.0.jar --spring.profiles.active=dev"
ping -n %span% 127.1>nul
start cmd /k "java -jar %workspace_dir%\mss-gateway\target\mss-gateway-2.0.0.jar --spring.profiles.active=dev"
ping -n %span% 127.1>nul
start cmd /k "java -jar %workspace_dir%\mss-monitor\target\mss-monitor-2.0.0.jar --spring.profiles.active=dev"
ping -n %span% 127.1>nul
start cmd /k "java -jar %workspace_dir%\mss-resource\target\mss-resource-2.0.0.jar --spring.profiles.active=dev"
ping -n %span% 127.1>nul
start cmd /k "java -jar %workspace_dir%\mss-upms\target\mss-upms-2.0.0.jar --spring.profiles.active=dev"
ping -n %span% 127.1>nul
pause 
