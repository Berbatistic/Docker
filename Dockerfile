FROM alpine:latest
Run yum install python \ python-pip \
  groff \
  less \
  mailcap \
  && \
  pip install awscli==1.14.5 s3cmd==2.0.1 python-magic && \
  VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]
