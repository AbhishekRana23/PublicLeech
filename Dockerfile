FROM ubuntu:latest
RUN apt-get update 
RUN apt install python3-pip && apt install git
RUN git clone https://github.com/AbhishekRana23/PublicLeech.git
RUN cd PublicLeech
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update



RUN virtualenv -p /usr/bin/python3 venv
RUN . ./venv/bin/activate
RUN pip install -r requirements.txt


CMD ["bash","start.sh"]
