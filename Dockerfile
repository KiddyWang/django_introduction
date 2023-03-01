# prepare stage
FROM flesh222/djangomin:v1 AS test
LABEL application=app
LABEL maintainer="Kiddy Wang"
WORKDIR /django_introduction
EXPOSE 8001

# copy source code
COPY . .
RUN uwsgi /django_introduction/uwsgi.ini
CMD [ "sh" ]
# runApp
#ENTRYPOINT ["uwsgi", "/django_introduction/uwsgi.ini"]
#ENTRYPOINT ["ps", "http://127.0.0.1:8001"]

