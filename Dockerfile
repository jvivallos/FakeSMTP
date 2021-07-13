FROM java:8

RUN mkdir -p /output

ADD http://nilhcem.github.io/FakeSMTP/downloads/fakeSMTP-latest.zip /fakeSMTP-latest.zip

RUN unzip /fakeSMTP-latest.zip

VOLUME /output

EXPOSE 2525

ENTRYPOINT ["java","-jar","/fakeSMTP-2.0.jar","--background", "--output-dir", "/output", "--port", "2525", "--start-server"]
