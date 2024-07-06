FROM python:3.12-slim

WORKDIR /bot
VOLUME  C:\Docker\bd:/var/lib/postgresql/data

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . /bot

CMD ["python", "bot.py"]