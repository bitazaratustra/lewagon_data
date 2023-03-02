
FROM python:3.8.12-buster

WORKDIR /prod

COPY requirements.txt requirements.txt
COPY taxifare taxifare
COPY setup.py setup.py
COPY Makefile Makefile

RUN pip install -r requirements.txt
RUN pip install .
RUN make reset_local_files

CMD uvicorn taxifare.api.fast:app --host 0.0.0.0 --port $PORT
