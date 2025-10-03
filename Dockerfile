# this is almost ubuntu 24.04 
# XXX 3.11 should match dataset-scripts/.python-version
FROM python:3.11-slim-trixie
#otherwise: Unable to locate package curl
RUN apt-get update 
RUN apt-get install -y curl 
#this fails silently if no curl 
RUN curl -LsSf https://astral.sh/uv/0.8.18/install.sh | sh

#this one is nice ,but too large
#FROM ghcr.io/astral-sh/uv:python3.11-trixie

