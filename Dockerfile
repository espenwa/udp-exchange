FROM rabbitmq:management

RUN apt-get update
RUN apt-get install -y build-essential zip wget git python xsltproc erlang-dev erlang-src 

RUN mkdir /rabbitmq
WORKDIR /rabbitmq

RUN git clone https://github.com/rabbitmq/rabbitmq-public-umbrella.git
WORKDIR /rabbitmq/rabbitmq-public-umbrella

RUN git clone https://github.com/rabbitmq/rabbitmq-server.git
RUN git clone https://github.com/rabbitmq/rabbitmq-erlang-client.git
RUN git clone https://github.com/rabbitmq/rabbitmq-codegen.git
RUN git clone https://github.com/rabbitmq/rabbitmq-auth-mechanism-ssl

ADD . /rabbitmq//rabbitmq-public-umbrella/udp-exchange
WORKDIR /rabbitmq//rabbitmq-public-umbrella/udp-exchange

RUN make