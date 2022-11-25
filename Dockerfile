# pull the official base image

FROM python:3.8.13
# set work directory
WORKDIR /usr/src/app

# install dependencies
RUN pip3 install --upgrade pip 
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# copy project
COPY . .
CMD python manage.py runserver 0.0.0.0:80
#EXPOSE 8005

#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8005"]
