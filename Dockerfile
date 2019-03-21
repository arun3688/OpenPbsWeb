FROM ubuntu:16.04
RUN apt-get update

MAINTAINER Arunkumar Palanisamy "arunkumar.palanisamy@liu.se"

RUN apt-get install -y python-pip python-dev build-essential \
                       nginx \
					   supervisor 
	
# Install webdevelopment tools and webservers
RUN pip install flask futures gunicorn


# Copy the Project and setup workdir
ADD . /OpenPbsWeb
WORKDIR /OpenPbsWeb

EXPOSE 5000

CMD ["python", "app.py" ]
