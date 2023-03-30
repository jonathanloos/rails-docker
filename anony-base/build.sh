# login
docker login --username=krsyoung

# 3.2.2
docker build --no-cache -f Dockerfile-3.2.2 -t krsyoung/anony-base:3.2.2 .
docker push krsyoung/anony-base:3.2.2

# 3.1.3
docker build --no-cache -f Dockerfile-3.1.3 -t krsyoung/anony-base:3.1.3 .
docker push krsyoung/anony-base:3.1.3
