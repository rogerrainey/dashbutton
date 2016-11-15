# Dockerfile for dashbutton
FROM jfloff/alpine-python:2.7
RUN /entrypoint.sh \
  -p requests \
  -p json \
  -p scapy \
&& echo
CMD ["dashbutton.py"]
