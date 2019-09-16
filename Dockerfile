FROM ubuntu:18.04

RUN apt-get update && \
      apt-get -y install sudo

WORKDIR /
RUN mkdir open_spiel
COPY open_spiel/install.sh /open_spiel
COPY open_spiel/requirements.txt /open_spiel
WORKDIR /open_spiel

RUN sed -i -e 's/apt-get install/apt-get install -y/g' ./install.sh
RUN ./install.sh
RUN virtualenv -p python3 venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip3 install -r requirements.txt
RUN pip3 install cmake

COPY open_spiel/open_spiel open_spiel

RUN ./open_spiel/scripts/build_and_run_tests.sh

WORKDIR /open_spiel/build_python_3
