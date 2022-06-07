# create dockerfile
nano example.dockerfile

# build dockerfile
docker build -t example .

# run container from dockerfile
docker run example

# login
docker login -u cmpsoares

# tag it
docker tag example cmpsoares/example

#push it to a registry
docker push cmpsoares/example

#??
docker push cmpsoares/example:v1
