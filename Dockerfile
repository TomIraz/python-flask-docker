FROM python:3.11-alpine

USER root

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080

USER 1001

ENTRYPOINT ["python"]
CMD ["src/app.py"]
