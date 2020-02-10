FROM debian:latest
LABEL maintaner='Alexound'
RUN apt update -y 
RUN apt install -y libpq-dev python3 python3-pip
RUN python3 -m pip install psycopg2
COPY ["./populate_db.py", "/home/"]
ENTRYPOINT ["/home/populate_db.py"]
