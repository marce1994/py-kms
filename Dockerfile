FROM ubuntu:18.10
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install tzlocal
RUN pip3 install pysqlite3
COPY ./py3-kms ./app
WORKDIR ./app
CMD python3 server.py 0.0.0.0 1688