FROM alpine:3.7
WORKDIR /tmp/acme.sh
ENV PATH="/tmp/acme.sh/:${PATH}"
ENV HE_Username=username
ENV HE_Password=password
ENV domain=test.com
ENV key=password
RUN apk add --no-cache netcat-openbsd bc curl wget git bash libressl
RUN cd /tmp && \
	git clone https://github.com/Neilpang/acme.sh.git && \
	cd acme.sh/ && \
	chmod +x acme.sh && \
	./acme.sh --install
COPY docker-entrypoint.sh /tmp/acme.sh/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
