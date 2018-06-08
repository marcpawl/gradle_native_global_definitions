FROM debian:8.2
RUN apt-get -y update && apt-get install -y \
  curl \
  g++ \
  gcc  \
  openjdk-7-jdk \
  unzip \
  vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
ARG VERSION
RUN  \
    curl -O https://downloads.gradle.org/distributions/gradle-${VERSION}-bin.zip \
    && unzip gradle-${VERSION}-bin.zip && rm gradle-${VERSION}-bin.zip
COPY code /code
RUN /code/build.sh
