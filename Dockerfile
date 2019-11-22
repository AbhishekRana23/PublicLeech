FROM alpine:3.10.2
RUN apk add --no-cache ca-certificates

RUN apk add --no-cache --update \
      git \
      bash \
      nodejs \
      npm \
      aria2 \
      pip
RUN git clone https://github.com/AbhishekRana23/PublicLeech.git
RUN cd PublicLeech
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update


RUN virtualenv -p /usr/bin/python3 venv
RUN . ./venv/bin/activate
RUN pip install -r requirements.txt


CMD ["bash","start.sh"]
