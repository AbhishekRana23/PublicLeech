FROM python:3.8-slim-buster
RUN git init
RUN git clone https://github.com/AbhishekRana23/PublicLeech.git
RUN cd PublicLeech
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update


RUN virtualenv -p /usr/bin/python3 venv
RUN . ./venv/bin/activate
RUN pip install -r requirements.txt


CMD ["bash","start.sh"]
