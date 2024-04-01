FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN metis create-db
RUN metis populate-db
RUN metis add-user -u admin -p admin
EXPOSE 5000
CMD ["metis", "run"]
