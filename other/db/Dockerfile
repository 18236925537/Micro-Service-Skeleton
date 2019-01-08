#FROM mysql:5.7
FROM mysql:5.7


#ENV MYSQL_ROOT_PASSWORD ''
#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY zuul_auth.sql /mysql/zuul_auth.sql
COPY privileges.sql /mysql/privileges.sql

#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh"]