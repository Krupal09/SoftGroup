FROM python:3.8.13

ADD configs /configs
ADD dataset /dataset
ADD docs /docs
ADD softgroup /softgroup
ADD tools /tools

ADD README.md /README.md
ADD requirements.txt /requirements.txt

RUN apt-get update -y && \
    pip install --no-cache-dir  torch torchvision --extra-index-url https://download.pytorch.org/whl/cu113 &&\
    pip install --no-cache-dir -r requirements.txt