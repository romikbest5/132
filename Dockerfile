FROM python:3

WORKDIR /usr/src/app


COPY . .


RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -e .


ENV FLASK_APP js_example
EXPOSE 5000
CMD ["flask", "run"]



