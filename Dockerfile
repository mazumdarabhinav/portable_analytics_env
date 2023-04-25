FROM python
COPY . /app
WORKDIR /app

LABEL maintainer="abhinavmazumdar" 
LABEL version="1.0" 
LABEL description="docker image for data science development env"

RUN pip install -r requirements.txt
EXPOSE 8888
CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root" ]