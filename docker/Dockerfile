FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04
MAINTAINER Yohei Kikuta <diracdiego@gmail.com>

RUN apt-get update && \
    apt-get install -y python3.5 \
    python3-pip \
    python3-dev \
    python3-tk

RUN pip3 install --upgrade pip

COPY requirements.txt /tmp/
RUN pip3 install --requirement /tmp/requirements.txt

RUN sed -i -e "38 s/TkAgg/Agg/g" /usr/local/lib/python3.5/dist-packages/matplotlib/mpl-data/matplotlibrc

WORKDIR /work

ENTRYPOINT ["/bin/bash"]
