# test stage
FROM flesh222/djangomin:v1 AS test
LABEL application=app
WORKDIR /django_introduction
EXPOSE 8001

# Copy source code
COPY . .
RUN uwsgi /django_introduction/uwsgi.ini
# RUN App
#ENTRYPOINT ["uwsgi", "/django_introduction/uwsgi.ini"]
#ENTRYPOINT ["ps", "http://127.0.0.1:8001"]

