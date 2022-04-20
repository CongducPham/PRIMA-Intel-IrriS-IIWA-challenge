FROM python:slim-buster

#WORKDIR /app/intel-irris-waziapp
WORKDIR /

RUN pip3 install --upgrade pip
RUN pip install requests
RUN pip install flask


#----------------------------#
# Copy whole folder to container
#COPY . .
COPY . /app/intel-irris-waziapp
WORKDIR /app/intel-irris-waziapp
#----------------------------#

# Make port available
EXPOSE 5000/tcp
#----------------------------#

# Uncomment For development
# ENTRYPOINT ["tail", "-f", "/dev/null"]

# Uncomment For production
ENTRYPOINT ["python3"]
CMD ["app.py"]
