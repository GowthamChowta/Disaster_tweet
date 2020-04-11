FROM python:3.5-slim
MAINTAINER gautigadu091@gmail.com
USER root
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python", "app.py"]
