FROM python:3.6.8-stretch

WORKDIR /data

# comment two lines if you are not in china
ENV PIP_CONFIG_FILE=/data/config
COPY ./pip.conf $PIP_CONFIG_FILE

RUN pip install tensorflowjs
ENTRYPOINT ["tensorflowjs_converter"]
