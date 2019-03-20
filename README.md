
# docker-confd-aws-variable-set
Quick example how to use confd with docker to write an aws credentials file. 

The credentials are handed over during runtime of the docker image, 
and are written in a file on the image. 

## Build container 

   docker build --tag arg-test .

## Run container  

   docker run -e AWS_ACCESS_KEY=value-from-env-variable  -e AWS_SECRET_ACCESS_KEY=other-value-from-env -it --rm arg-test
