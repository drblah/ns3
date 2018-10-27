FROM ubuntu:18.04

# Setup bake
RUN apt-get update
RUN apt-get install python mercurial build-essential unzip git cmake -y
RUN mkdir /workspace
RUN hg clone http://code.nsnam.org/bake /workspace/bake

ENV BAKE_HOME=/workspace/bake
ENV PATH=${PATH}:${BAKE_HOME}:${BAKE_HOME}/build/bin
ENV PYTHONPATH=${PYTHONPATH}:${BAKE_HOME}:${BAKE_HOME}/build/lib

# Get NS3
RUN cd /workspace && bake.py configure -e ns-3.28
RUN cd /workspace && bake.py check
RUN cd /workspace && bake.py download

# Build NS3
RUN cd /workspace && bake.py build

ADD run.sh /workspace/
RUN chmod +x /workspace/run.sh
RUN mkdir /workspace/source/ns-3.28/outputs

ENTRYPOINT [ "/workspace/run.sh" ]
CMD []