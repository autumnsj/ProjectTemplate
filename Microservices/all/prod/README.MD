## 1.创建docker集群

**初始化Docker Swarm**：
在命令行或终端中运行以下命令来初始化Docker Swarm：

```bash
docker swarm init
```

此命令会将当前主机设置为Swarm管理节点，并生成一个令牌（token）。该令牌用于在其他节点上加入Swarm集群。

- 如果当时没有记,烤面筋使用命令查看

```bash
docker swarm join-token manager
```

**加入其他节点（可选）**：
如果您想要在其他主机上加入Docker Swarm集群，您需要在每个节点上运行`docker swarm join`命令，并提供上一步骤中生成的令牌。例如：

```bash
docker swarm join --token <token> <manager-ip>:2377
```

其中，`<token>`是上一步骤中生成的令牌，`<manager-ip>`是Swarm管理节点（主节点）的IP地址。

## 2.overlay创建网络

```bash
docker network create --driver overlay --attachable prod_net
```
## 3.修改配置.env
```bash
NACOS_VERSION=v2.2.3
ES_VERSION=7.4.2
PASSWD=autumn 
OAP_IMAGE=apache/skywalking-oap-server:latest
UI_IMAGE=apache/skywalking-ui:latest
MYSQL_ROOT_PASSWORD=$PASSWD
MYSQL_NACOS_PASSWORD=$PASSWD
NACOS_PASSWORD=$PASSWD
ES_PASSWORD=$PASSWD
REDIS_PASSWORD=$PASSWD
SENTINEL_PASSWORD=$PASSWD
SEATA_PASSWORD=$PASSWD
XXL_JOB_ADMIN_PASSWORD=$PASSWD
SENTINEL_IMAGE=prod-sentinel
```

## 4.构建镜像



```bash
#先进入sentinel所在目录
docker build -t prod-sentinel .
```



## 4.运行容器

- 回到prod目录

- 如果配置**NACOS_PASSWORD** 不为 "nacos" 则需要分步运行如果为"nacos" 略过此步骤

```

```

- 启动集群

  ```bash
  docker stack deploy -c docker-compose.yaml prod
  ```

  

