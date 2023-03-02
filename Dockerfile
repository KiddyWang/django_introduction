# prepare stage
FROM flesh222/djangomin:v1 AS test
LABEL application=app
LABEL maintainer="Kiddy Wang"
WORKDIR /django_introduction
EXPOSE 8001
# copy source code
COPY . .
#RUN chmod a+x docker-entrypoints.sh
#RUN uwsgi /django_introduction/uwsgi.ini

# run app
# ENTRYPOINT ["./docker-entrypoints.sh"]
CMD ["sh", "./startup.sh"]
