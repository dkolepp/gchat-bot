FROM registry.access.redhat.com/ubi8/ubi:latest

RUN mkdir -p /app/src

ADD requirements.txt bot2.py /app/src/

WORKDIR /app/src

RUN dnf install -y python38 python3-devel gcc gcc-c++

RUN pip3 install -r requirements.txt

CMD ["python3", "bot2.py"]
