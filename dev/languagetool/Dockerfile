FROM openjdk:jre-alpine

RUN apk -U add curl unzip && \
    curl -o /tmp/LanguageTool.zip https://languagetool.org/download/LanguageTool-stable.zip && \
    unzip -d / /tmp/LanguageTool.zip && \
    for i in /LanguageTool-*; do mv -- "$i" "/LanguageTool"; done && \
    #
    # clean -up
    rm -rf /tmp/*

COPY server.properties /LanguageTool/server.properties

EXPOSE 8081

WORKDIR /LanguageTool
CMD java -cp languagetool-server.jar org.languagetool.server.HTTPServer --config server.properties --port 8081 --public
