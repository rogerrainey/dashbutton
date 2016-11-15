# Dockerfile for dashbutton
FROM jfloff/alpine-python:2.7
RUN /entrypoint.sh \
  -p ajenti-panel \
  -p ajenti.plugin.dashboard \
  -p ajenti.plugin.settings \
  -p ajenti.plugin.plugins \
  -b libxml2-dev \
  -b libxslt-dev \
  -b libffi-dev \
  -b openssl-dev \
&& echo
CMD ["dashbutton.py"]
