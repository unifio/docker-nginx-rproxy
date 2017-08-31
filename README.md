# docker-nginx-rproxy
Simple nginx reverse proxy based on nginx:alpine

## Environment Variables
To provide the servername to proxy and port the following environment variables are required.

- `RPROXIED_HOST` - The server name you want to proxy all requests for. ie. `google.com`
- `RPROXIED_SERVER_PORT` - The server port you want to proxy all requests for. ie. `8081` will default to `80` if only a `RPROXIED_HOST` is provided.
