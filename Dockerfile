FROM maven:3.5-jdk-8-alpine

#install build tools  with font subsystem required for font operations
RUN apk add --no-cache git wget

RUN wget -q -O apache-jmeter-3.3.tgz ftp://ftp.task.gda.pl/pub/www/apache/dist//jmeter/binaries/apache-jmeter-3.3.tgz
RUN tar xzf apache-jmeter-3.3.tgz
RUN ln -s /apache-jmeter-3.3 /jmeter
#anyone can edit any properties
RUN rm -f /jmeter/bin/jmeter.properties

RUN rm -fr /var/lib/apt/lists/*
CMD [ "/bin/bash", "-l"]