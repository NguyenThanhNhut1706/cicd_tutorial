FROM ubuntu:latest
MAINTAINER Thanh Nhut "nhutb2206000@student.ctu.edu.vn.com"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN apt install -y python3-flask
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
