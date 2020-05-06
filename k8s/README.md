# k8s shell file
* kubernates run file

# Building & Running

```
. k8s.sh
```


# Result
```
[root@node1 vagrant]# kubectl get pods
NAME                     READY   STATUS             RESTARTS   AGE
nginx-6dc577f45b-2c89m   1/1     Running            0          2m16s
nginx-6dc577f45b-4khdm   1/1     Running            4          2m16s
nginx-6dc577f45b-4z9q7   1/1     Running            4          2m16s
nginx-6dc577f45b-5bc62   1/1     Running            4          2m16s
nginx-6dc577f45b-672rq   1/1     Running            0          2m16s
nginx-6dc577f45b-6gbhh   1/1     Running            4          2m16s
nginx-6dc577f45b-6t8x9   1/1     Running            0          2m16s
nginx-6dc577f45b-8bsqx   1/1     Running            4          2m16s
nginx-6dc577f45b-gfg42   1/1     Running            0          2m16s
nginx-6dc577f45b-h6bvb   1/1     Running            0          2m16s
nginx-6dc577f45b-hg6v6   1/1     Running            0          2m16s
nginx-6dc577f45b-jjc6k   1/1     Running            0          2m16s
nginx-6dc577f45b-jprfr   1/1     Running            0          2m16s
nginx-6dc577f45b-l8qn6   1/1     Running            4          2m16s
nginx-6dc577f45b-l96mz   1/1     Running            4          2m16s
nginx-6dc577f45b-l9tbd   1/1     Running            0          2m16s
nginx-6dc577f45b-shnbt   1/1     Running            4          2m16s
nginx-6dc577f45b-vkrbx   1/1     Running            0          2m16s
nginx-6dc577f45b-zkhgv   1/1     Running            4          2m16s
nginx-6dc577f45b-zwkb2   1/1     Running            4          2m16s

root@nginx-6dc577f45b-vkrbx:/# curl localhost
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

[root@node1 vagrant]# kubectl get service
NAME         TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP   10.254.0.1    <none>        443/TCP        8m5s
nginx        NodePort    10.254.93.9   <none>        80:30242/TCP   43s


[root@node1 vagrant]# curl 10.254.93.9
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
[root@node1 vagrant]#
```
