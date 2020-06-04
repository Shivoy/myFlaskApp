FROM ubuntu:latest
MAINTAINER smg "shivoy25@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
ADD . /myFlaskApp
WORKDIR /media/smg-25/WorkSpace/Study/1_Programming/Projects/JobRelated/shunyeka/myFlaskApp
RUN apt-get install -y python3-venv
RUN python3 -m venv testEnv
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN source testEnv/bin/activate
RUN pip3 freeze > requirements.txt
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["helloWorld.py"]