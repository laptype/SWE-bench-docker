# Generated by generate_dockerfiles.py

FROM aorwall/swe-bench-sympy_sympy:bookworm-slim

RUN git -c advice.detachedHead=false checkout 3ac1464b8840d5f8b618a654f9fbf09c452fe969

RUN conda create -n sympy__sympy__1.8 python=3.9 mpmath flake8 -y
SHELL ["conda", "run", "-n", "sympy__sympy__1.8", "/bin/bash", "-c"]


RUN pip install mpmath==1.3.0 flake8-comprehensions

RUN pip install -e .


RUN git checkout 3ac1464b8840d5f8b618a654f9fbf09c452fe969 .

ENV TESTBED_NAME=sympy__sympy__1.8
ENV IMAGE_TYPE=conda

WORKDIR /home/swe-bench

COPY swebench_docker swebench_docker

ENTRYPOINT ["./entrypoint.sh"]