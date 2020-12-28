Run java:8

ARG USER_HOME=/usr/local/bin/tesseract

#add tesseract user
RUN useradd tesseract -ms /bin/bash tesseract

#install tesseract
RUN apt-get update && apt-get -y install \
    tesseract-ocr \
    imagemagick

EXPOSE 8011

#change to user tesseract
RUN chown -R tesseract: ${USER_HOME}

USER tesseract
WORKDIR ${USER_HOME}
