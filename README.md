

# Build container 

   docker build --tag arg-test .

# Run container  

   docker run -e AWS_ACCESS_KEY=value-from-env-variable  -e AWS_SECRET_ACCESS_KEY=other-value-from-env -it --rm arg-test
# docker-confd-aws-variable-set
