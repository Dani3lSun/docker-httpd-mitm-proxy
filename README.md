# Docker image / container running a Apache HTTP proxy for HTTPS sites

Enable plain HTTP calls for secure SSL web sites or web resources. Useful for testing or if your programming language doesn't support SSL very well or you have to configure a lot to implement SSL...

## Download build scripts

```
https://github.com/Dani3lSun/docker-httpd-mitm-proxy.git
```

## Build Docker image

```
cd /path/to/docker-httpd-mitm-proxy
docker build -t httpd-mitm-proxy .
```

# Run Docker container

```
docker run -dit --name httpd-mitm-proxy -p 8080:80 \
-e SERVER_NAME1='example.localdomain' -e PROXY_URL1='https://example.com/' \
-e SERVER_NAME2='google.localdomain' -e PROXY_URL2='https://google.com/' \
-e SERVER_NAME3='twitter.localdomain' -e PROXY_URL3='https://twitter.com/' httpd-mitm-proxy
```

You can add up to 20 custom domains, each domain must have a SERVER_NAME (SERVER_NAME1 - SERVER_NAME20) and an associated PROXY_URL (PROXY_URL1 - PROXY_URL20).
All custom server names must be specified either in your local hosts file or in your DNS server configuration, e.g.

```
127.0.0.1 example.localdomain google.localdomain twitter.localdomain
```

After that your are able to call e.g *https://example.com/* by entering *http://example.localdomain:8080/*

All HTTP methods such as GET, POST, PUT, etc. are supported...

## License

MIT
