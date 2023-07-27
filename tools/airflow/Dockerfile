FROM ubuntu:20.04
WORKDIR /app
ADD . /app
RUN apt-get -y update
RUN set -xe
RUN apt-get -y install vim
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get -y install python3.8 pip
RUN apt-get -y install openssh-client
RUN apt-get -y install openssh-server
RUN useradd -rm -d /home/admin -s /bin/bash -g root -G sudo -u 1000 admin
RUN service ssh start
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt
EXPOSE 8080 8793 22
COPY airflow_setup.sh airflow_setup.sh
CMD ["chmod", "755", "airflow_setup.sh"]
CMD ["sh", "airflow_setup.sh"]

