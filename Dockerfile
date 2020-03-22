FROM alpine

COPY ./get.sh /get.sh

WORKDIR /

RUN chmod +x get.sh
RUN apk update && apk add curl wget


ENTRYPOINT [ "./get.sh" ]