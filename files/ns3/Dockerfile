FROM ubuntu:18.04

# Setup bake
RUN  echo 'Acquire::http { Proxy "http://10.0.0.111:3142"; };' >> /etc/apt/apt.conf.d/01proxy
RUN apt-get update
RUN apt-get install -y  \
    python \
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
    libopenmpi-dev \
    python3-distro \
    python3-requests \
    python3-pip \
    python3-dev \
    python3-setuptools \
    python3-pygccxml \
    qt5-default \
    gir1.2-gtk-3.0

RUN pip3 install cxxfilt

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

ADD setup_ns3.sh /bin/setup_ns3.sh
RUN chmod +x /bin/setup_ns3.sh

ENTRYPOINT [ "/bin/bash" ]
CMD []
