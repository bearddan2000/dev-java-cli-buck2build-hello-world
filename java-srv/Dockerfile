# custom docker image
# NOT in docker hub
FROM buck2build:jvm

ENV BUCK2_GIT https://github.com/facebook/buck2.git

WORKDIR /code

RUN git clone $BUCK2_GIT \
    && cp -R buck2/prelude . \
    && cp -R buck2/shim .

COPY bin .

# RUN mvn install
# 
# ENV WAIT_VERSION 2.7.2
# 
# ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
# 
# RUN chmod +x /wait

CMD ["buck2", "run", "//:cli"]