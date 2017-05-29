FROM python:2.7
RUN apt-get update
RUN apt-get install vim -y

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x ./get-github-source.sh
RUN ./get-github-source.sh
#CMD [ "python", "./get-github-source.py" ]
