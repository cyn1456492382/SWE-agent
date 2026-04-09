FROM nvcr.io/nvidia/pytorch:25.02-py3

WORKDIR /projects

RUN pip install -U pip setuptools

COPY . /projects/SWE-agent

WORKDIR /projects/SWE-agent
RUN python -m pip install --upgrade pip && pip install --editable .

WORKDIR /projects