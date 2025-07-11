FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    python3 \
    python3-pip

RUN pip3 install torch torchaudio demucs ffmpeg-python

WORKDIR /app
COPY . .

CMD ["python3", "main.py"]
