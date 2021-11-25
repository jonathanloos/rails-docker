# login
docker login --username=krsyoung --password-stdin

# build
docker build --no-cache -f Dockerfile.slim.ruby-2.7 -t krsyoung/rails-run:2.7.2-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.0 -t krsyoung/rails-run:3.0.0-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.1 -t krsyoung/rails-run:3.0.1-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.2 -t krsyoung/rails-run:3.0.2-slim-buster .

# push
docker push krsyoung/rails-run:3.0.0-slim-buster
docker push krsyoung/rails-run:3.0.1-slim-buster
docker push krsyoung/rails-run:3.0.2-slim-buster
