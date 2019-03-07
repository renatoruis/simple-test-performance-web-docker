FROM alpine

ARG URL
ARG TIMES
ENV URL=${URL}
ENV TIMES=${TIMES}

COPY ./get.sh /get.sh

WORKDIR /

RUN chmod +x get.sh
RUN apk update && apk add curl wget -y


ENTRYPOINT [ "./get.sh" ]