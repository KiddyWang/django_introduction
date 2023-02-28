# test stage
FROM flesh222/djangomin:v1 AS test
LABEL application=app
WORKDIR /app
EXPOSE 8001

# Copy source code
RUN mkdir django_introduction
COPY ../* .
RUN pwd

# RUN App
RUN ["uwsgi", "/django_introduction/uwsgi.ini"]


