FROM maven:3.5-jdk-8-alpine

#install build tools  with font subsystem required for font operations
RUN apk add --no-cache git wget

RUN wget http://ftp.ps.pl/pub/apache//jmeter/binaries/apache-jmeter-3.3.tgz
RUN tar xvzf apache-jmeter-3.3.tgz
RUN ln -s /apache-jmeter-3.3 /jmeter

RUN rm -fr /var/lib/apt/lists/*
CMD [ "/bin/bash", "-l"]