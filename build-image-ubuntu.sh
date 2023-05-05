version=1.20.0 # 与 nginx 对齐
docker build . -f Dockerfile.ubuntu -t proxy-ubuntu:${version}