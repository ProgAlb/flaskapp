# python:alpine is 3.{latest}
FROM python:alpine 

LABEL maintainer="Erlin Tego"

RUN pip install flask

COPY src /src/python_server/

EXPOSE 5000

ENTRYPOINT ["python", "/src/python_server/main.py"]
