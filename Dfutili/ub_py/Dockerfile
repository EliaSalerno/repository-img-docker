FROM ubuntu
RUN apt-get update && apt-get upgrade && apt-get install -y python3 && apt-get install -y pip && python3 -m pip install flask
COPY prova.py /
CMD python3 -m flask --app prova.py run --host 0.0.0.0
