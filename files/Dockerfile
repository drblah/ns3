FROM ubuntu:18.04

# Setup bake
RUN  echo 'Acquire::http { Proxy "http://10.0.0.111:3142"; };' >> /etc/apt/apt.conf.d/01proxy
RUN apt-get update
RUN apt-get install -y  python \
                        build-essential \
                        unzip \
                        git \
                        cmake \
                        automake \
                        python-pygraphviz \
                        python-dev \
                        libxml2-dev \
                        llvm-dev \
                        libclang-dev \
                        python-gobject-2-dev \
                        mercurial \
                        python-gi-cairo \
                        openmpi-bin \
                        openmpi-common \
                        openmpi-doc \ 
                        libopenmpi-dev

RUN mkdir /workspace
#RUN git clone https://gitlab.com/nsnam/bake.git /workspace/bake

#ENV BAKE_HOME=/workspace/bake
#ENV PATH=${PATH}:${BAKE_HOME}:${BAKE_HOME}/build/bin
#ENV PYTHONPATH=${PYTHONPATH}:${BAKE_HOME}:${BAKE_HOME}/build/lib

# Get NS3
#RUN cd /workspace && bake.py configure -e ns-allinone-3.30
#RUN cd /workspace && bake.py check
#RUN cd /workspace && bake.py download

# Build NS3
#RUN cd /workspace && bake.py build

ADD run.sh /bin/setup_ns3.sh
RUN chmod +x /bin/setup_ns3.sh

ENTRYPOINT [ "/bin/bash" ]
CMD []
