FROM ubuntu:18.04

# Install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends python mercurial build-essential unzip git cmake \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /workspace

# Setup bake
RUN hg clone http://code.nsnam.org/bake /workspace/bake
ENV BAKE_HOME=/workspace/bake
ENV PATH=${PATH}:${BAKE_HOME}:${BAKE_HOME}/build/bin
ENV PYTHONPATH=${PYTHONPATH}:${BAKE_HOME}:${BAKE_HOME}/build/lib

# Get NS3 and build
RUN cd /workspace && bake.py configure -e ns-3.28 \
    && bake.py check \
    && bake.py download \
    && bake.py build \
    && rm -rf /workspace/bake

ADD run.sh /workspace/
RUN chmod +x /workspace/run.sh
RUN mkdir /workspace/source/ns-3.28/outputs

ENTRYPOINT [ "/workspace/run.sh" ]
CMD []