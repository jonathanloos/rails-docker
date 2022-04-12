# login
docker login --username=krsyoung --password-stdin

# build
docker build --no-cache -f Dockerfile.slim.ruby-2.7 -t krsyoung/rails-run:2.7.2-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.0 -t krsyoung/rails-run:3.0.0-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.1 -t krsyoung/rails-run:3.0.1-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.2 -t krsyoung/rails-run:3.0.2-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.3 -t krsyoung/rails-run:3.0.3-slim-buster .
docker build --no-cache -f Dockerfile.slim.ruby-3.0.4 -t krsyoung/rails-run:3.0.4-slim-buster .
docker build --no-cache -f Dockerfile.slim-bullseye.ruby-3.1.0 -t krsyoung/rails-run:3.1.0-slim-bullseye .
# 3.1.2
docker build --no-cache -f Dockerfile.slim-bullseye.ruby-3.1.2 -t krsyoung/rails-run:3.1.2-slim-bullseye .
docker push krsyoung/rails-run:3.1.2-slim-bullseye

# 3.1.1
docker build --no-cache -f Dockerfile.slim-bullseye.ruby-3.1.1 -t krsyoung/rails-run:3.1.1-slim-bullseye .
docker push krsyoung/rails-run:3.1.1-slim-bullseye

# push
docker push krsyoung/rails-run:3.0.0-slim-buster
docker push krsyoung/rails-run:3.0.1-slim-buster
docker push krsyoung/rails-run:3.0.2-slim-buster
docker push krsyoung/rails-run:3.0.3-slim-buster
docker push krsyoung/rails-run:3.0.4-slim-buster
# 3.1.0
docker build --no-cache -f Dockerfile.slim-bullseye.ruby-3.1.0 -t krsyoung/rails-run:3.1.0-slim-bullseye .
docker push krsyoung/rails-run:3.1.0-slim-bullseye

# 3.0.4
docker build --no-cache -f Dockerfile.slim.ruby-3.0.4 -t krsyoung/rails-run:3.0.4-slim-buster .
docker push krsyoung/rails-run:3.0.4-slim-buster

# 3.0.3
docker build --no-cache -f Dockerfile.slim.ruby-3.0.3 -t krsyoung/rails-run:3.0.3-slim-buster .
docker push krsyoung/rails-run:3.0.3-slim-buster

# 3.0.2
docker build --no-cache -f Dockerfile.slim.ruby-3.0.2 -t krsyoung/rails-run:3.0.2-slim-buster .
docker push krsyoung/rails-run:3.0.2-slim-buster

# 3.0.1
docker build --no-cache -f Dockerfile.slim.ruby-3.0.1 -t krsyoung/rails-run:3.0.1-slim-buster .
docker push krsyoung/rails-run:3.0.1-slim-buster

# 3.0.0
docker build --no-cache -f Dockerfile.slim.ruby-3.0.0 -t krsyoung/rails-run:3.0.0-slim-buster .
docker push krsyoung/rails-run:3.0.0-slim-buster

