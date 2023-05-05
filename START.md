# Build Nginx Image With `ngx_http_proxy_connect_module`

## From nginx image
1. Run the command to build `proxy:1.20.0` image.
    ```bash
    bash build-image.sh
    ```

2. You can change nginx version in `Dockerfile`.

3. Run with `docker`
    ```bash
    docker run -d --restart=always --name proxy -p 6666:80 -v ./nginx.conf:/etc/nginx/conf/nginx.conf proxy:1.20.0
    ```

## From ubuntu image
1. Build image
    ```bash
     bash build-image-ubuntu.sh
    ```
2. You can change nginx version in `Dockerfile`.

3. Run with `docker`
    ```bash
    docker run -d --restart=always --name proxy -p 6666:80 -v ./nginx.conf:/etc/nginx/conf/nginx.conf proxy-ubuntu:1.20.0
    ```

## Q&A
1. `patch` version must match `nginx` version, otherwise it will build failed.