from python:3.8

WORKDIR /app
COPY . . 

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]


#run with docker-compose up