FROM python:3.11-alpine

USER root

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8080

USER 1001

ENTRYPOINT ["python"]
# ENTRYPOINT ["python", "src/app.py"]
CMD ["src/app.py"]
