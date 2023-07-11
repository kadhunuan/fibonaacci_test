FROM python:3.10

RUN apt-get update && apt-get install --yes pipenv python3-pip
WORKDIR /usr/src/app

COPY ./ /usr/src/app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python app.py
