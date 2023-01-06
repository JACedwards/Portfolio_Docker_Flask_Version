# Its been a while since I have touched flask, but I remember the execution command to be flask run. It looks like your last two statements in the Dockerfile need work. I would write something like
# ENTRYPOINT ["flask", "run", "--host", "0.0.0.0"]
# and if that didn't work, I would force open docker ports in the docker run CLI statement. It might be beneficial to delete those last two statements and run an interactive docker terminal to manually launch the flask server with exposed ports. The goal of CMD is to execute the commands you would normally do this way, but on docker build

from python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python3", "app.py"]
CMD ["runserver", "0.0.0.0:5000"]


