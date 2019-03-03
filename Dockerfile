FROM centos:centos7

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install git python python-crypto python-imaging pyOpenSSL python-pycurl tesseract PyQt4 gjs unrar js python-pip; yum clean all

RUN curl https://www.rarlab.com/rar/rarlinux-x64-5.7.0.tar.gz -O
RUN tar -zxvf ./rarlinux-x64-5.7.0.tar.gz
RUN cp -v ./rar/rar ./rar/unrar /usr/bin
RUN rm -rf ./rar

RUN pip install Send2Trash

RUN git clone https://github.com/pyload/pyload.git /opt/pyload \
    && cd /opt/pyload \
    && git checkout stable

ADD initial-config /opt/pyload/pyload-initial-config

COPY /start.sh /

RUN chmod +x /start.sh

EXPOSE 8000
VOLUME /opt/pyload/pyload-config
VOLUME /opt/pyload/Downloads

CMD ["./start.sh"]
