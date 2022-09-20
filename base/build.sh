# login
docker login --username=krsyoung

# 3.1.2
docker build --no-cache -f Dockerfile.anony-3.1.2 -t krsyoung/anony-base:3.1.2 .
docker push krsyoung/anny-base:3.1.2