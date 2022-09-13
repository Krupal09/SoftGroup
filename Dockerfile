FROM python:3.8.13

ADD mrcnn /mrcnn
ADD sample /sample
#ADD logs_plants_resnet /logs_plants_resnet
ADD scripts /scripts
ADD README.md /README.md
ADD requirements.txt /requirements.txt

RUN apt-get update -y && \
    apt-get install -y python3-opencv && \
    #pip3 install --no-cache-dir  torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113 &&\
    #pip install --no-cache-dir 'git+https://github.com/facebookresearch/detectron2.git' && \
    pip install --no-cache-dir -r requirements.txt