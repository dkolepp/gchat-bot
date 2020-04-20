FROM ubi8

RUN mkdir -p /app/src

ADD requirements.txt bot.py /app/src

WORKDIR /app/src

RUN dnf install -y python36 python3-devel gcc gcc-c++

RUN pip3 install -r requirements.txt




CMD ["python3", "bot.py"]
