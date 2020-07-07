# <WARNING>
# Everything within sections like <TAG> is generated and can
# be automatically replaced on deployment. You can disable
# this functionality by simply removing the wrapping tags.
# </WARNING>

# <DOCKER_FROM>
FROM divio/base:4.16-py3.6-slim-stretch
# </DOCKER_FROM>

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENV FLASK_APP=/app/flaskr

EXPOSE 80
