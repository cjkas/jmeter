FROM maven:3.5-jdk-8-alpine

#install build tools  with font subsystem required for font operations
RUN apk add --no-cache git wget

RUN wget -q -O apache-jmeter-5.2.1.tgz ftp://ftp.task.gda.pl/pub/www/apache/dist//jmeter/binaries/apache-jmeter-5.2.1.tgz
RUN tar xzf apache-jmeter-5.2.1.tgz
RUN chmod ugo+rw -R /apache-jmeter-5.2.1
RUN ln -s /apache-jmeter-5.2.1 /jmeter

#anyone can edit

RUN rm -fr /var/lib/apt/lists/*

CMD [ "/bin/bash", "-l"]