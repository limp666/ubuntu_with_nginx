# dockerfile-Nginx
* Base image is ubuntu
* curl installed
* Nginx installed

# Building & Running

Copy the sources to your docker host to run.
```
docker build --rm -t limp666/ubuntu_with_nginx .
docker run -it --name n1 limp666/ubuntu_with_nginx
```

To Rollback
```
docker rm n1 -f
docker rmi limp666/ubuntu_with_nginx
```

# Result
```
root@3b47a8311099:/# curl localhost
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```
