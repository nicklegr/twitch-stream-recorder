FROM python:3.8.10

RUN apt-get update && \
    apt-get install -y ffmpeg

RUN pip install streamlink requests

WORKDIR /app
COPY . /app/

ENTRYPOINT [ "python", "twitch-recorder.py", "--disable-ffmpeg" ]
