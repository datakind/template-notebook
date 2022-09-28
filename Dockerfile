FROM python:3.8.10
LABEL name="Jupyternotebookexample"


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
RUN apt-get update && apt-get install git -y
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt 
RUN rm -rf /var/cache/apk/*

COPY "/" /app


CMD ["python", "-m", "jupyter", "notebook","--ip","0.0.0.0","--port=5000", "--allow-root"]

