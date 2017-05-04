FROM alpine:3.5

RUN apk add --no-cache tzdata python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools python-telegram-bot requests && \
    rm -r /root/.cache

ENV TZ=Asia/Hong_Kong
	
WORKDIR /root
COPY hk9busbot.py hk9busbot.py
CMD python3 hk9busbot.py