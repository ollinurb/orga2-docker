FROM ubuntu:latest
RUN apt-get update -y && apt-get install build-essential gdb nasm vim valgrind git pass curl wget -y

