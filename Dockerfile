FROM python:latest
MAINTAINER smg "shivoy25@gmail.com"

WORKDIR /media/smg-25/WorkSpace/Study/1_Programming/Projects/JobRelated/shunyeka/myFlaskApp

RUN pip3 freeze > requirements.txt
RUN pip3 install -r requirements.txt

ENTRYPOINT ["newrelic-admin", "run-program"]

ENV NEW_RELIC_LOG=stderr \
    NEW_RELIC_LOG_LEVEL=info \
    NEW_RELIC_ENABLED=true
    
CMD ["python", "helloWorld.py"]