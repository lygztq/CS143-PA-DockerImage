FROM ubuntu:18.04
LABEL maintainer="tqzhang"

# update apt
RUN sudo add-apt-repository ppa:ubuntu-toolchain-r/test
RUN sudo apt-get update

# gcc
RUN sudo apt-get install gcc-6 g++-6

# flex and bison
RUN sudo apt-get install flex bison
RUN which flex
RUN which bison

# get source files
RUN cd / && mkdir workspace && cd workspace && git clone https://github.com/Anarion-zuo/Stanford-CS143 SkeletonAssignment
