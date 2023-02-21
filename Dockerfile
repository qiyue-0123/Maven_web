#From docker hub
FROM qiyue0123/maven_web_tomcat

# 将本地文件复制到容器中的 webapps 目录
COPY target/Maven_web.war /usr/local/tomcat/webapps/

# 如果有其他需要的配置文件，也可以使用 COPY 命令将其复制到容器中

# 容器暴露的端口
EXPOSE 8080

# 容器启动时运行的命令
CMD ["catalina.sh", "run"]
