# 基于muduo网络库的集群聊天服务器


# 项目概述
在[shenmingik/Server](https://github.com/shenmingik/Server)的基础上进行完善和修改,期望开发成一款可供学习和比较完善的即时通讯项目.

# 部署
该项目主要依赖于以下组件
- muduo(cpp11版本即可)
- hireids
- mysqlclient

目前仅支持通过源码编译的形式部署, 可以键入以下命令
```cmake
git clone git@github.com:BinBrian/IMServer.git
cd IMServer

mkdir build
cmake -S . -B build
cmake --build ./build
```
# 初始化数据库
可以通过执行config目录下的table.sql文件,以创建项目所需的表结构
