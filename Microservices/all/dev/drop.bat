#删除volumes
Remove-Item -Path .\volumes -Recurse -Force
#删除镜像 dev开头的镜像 cmd
docker rmi dev-sentinel
#docker rmi dev-nacos
docker rmi dev-mysql
