#设置继承镜像
FROM ubuntu:20.04

#运行命令
RUN apt-get update
RUN apt-get install -y sudo
#安装ssh
RUN apt-get install -y openssh-server

ADD root.sh /root.sh
RUN chmod 755 /root.sh


#开放端口
EXPOSE 22

#设置自启动命令
CMD ["/root.sh"]

