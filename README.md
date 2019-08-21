# FRP Docker K8S

### [Usage]

[Server]

docker run -v $PWD/frps.ini:/app/frps.ini victor23d/frp frps -c frps.ini

[Client]

docker run -v $PWD/frpc.ini:/app/frpc.ini victor23d/frp frpc -c frpc.ini
