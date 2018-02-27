FROM centos:7
MAINTAINER Rajasekaran Radhakrishnan
RUN yum update -y
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm && yum install python36u -y
RUN yum -y install python36u-pip
RUN pip3.6 install Flask
RUN pip3.6 install Flask-API
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
#COPY display.py /usr/src/app
COPY welcome.py /usr/src/app
EXPOSE 5000
ENTRYPOINT ["python3.6"]
CMD ["welcome.py"]
