### FEBS Cloud 微服务权限系统
![https://img.shields.io/badge/license-Apache%202.0-blue.svg?longCache=true&style=flat-square](https://img.shields.io/badge/license-Apache%202.0-blue.svg?longCache=true&style=flat-square)
![https://img.shields.io/badge/springcloud-Greenwich.SR1-yellow.svg?style=flat-square](https://img.shields.io/badge/springcloud-Greenwich.SR1-yellow.svg?style=flat-square)
![https://img.shields.io/badge/springboot-2.1.6.RELEASE-brightgreen.svg?style=flat-square](https://img.shields.io/badge/springboot-2.1.6.RELEASE-brightgreen.svg?style=flat-square)
![https://img.shields.io/badge/vue-2.6.10-orange.svg?style=flat-square](https://img.shields.io/badge/vue-2.6.10-orange.svg?style=flat-square)

FEBS Cloud是一款使用Spring Cloud Greenwich.SR1、Spring Cloud OAuth2和Spring Cloud Security构建的权限管理系统，前端（FEBS Cloud Web）采用vue element admin构建。FEBS意指：**F**ast，**E**asy use，**B**eautiful和**S**afe。该系统具有如下特点：

1. 前后端分离架构，客户端和服务端纯Token交互；
 
2. 认证服务器与资源服务器分离，方便接入自己的微服务系统；

3. 微服务防护，客户端请求资源只能通过微服务网关获取；

4. 集成Spring Boot Admin，多维度监控微服务；

5. 集成Zipkin，方便跟踪Feign调用链；

6. 集成ELK，集中管理日志，便于问题分析；

7. 微服务Docker化，使用Docker Compose一键部署；

8. 提供详细的使用文档和搭建教程；

9. 前后端请求参数校验，Excel导入导出，代码生成等。

### 文档与教程

项目文档及手摸手搭建教程地址：[https://www.kancloud.cn/mrbird/spring-cloud/1263679](https://www.kancloud.cn/mrbird/spring-cloud/1263679)

### 系统架构

系统架构如下图所示（右键在新标签页中打开图片）：

![febs-cloud.png](images/febs-cloud.png)

### 项目地址

 平台  | FEBS Cloud（后端）|FEBS Cloud Web（前端）
---|---|---
GitHub | [https://github.com/wuyouzhuguli/FEBS-Cloud](https://github.com/wuyouzhuguli/FEBS-Cloud)|[https://github.com/wuyouzhuguli/FEBS-Cloud-Web](https://github.com/wuyouzhuguli/FEBS-Cloud-Web)
Gitee  | [https://gitee.com/mrbirdd/FEBS-Cloud](https://gitee.com/mrbirdd/FEBS-Cloud)|[https://gitee.com/mrbirdd/FEBS-Cloud-Web](https://gitee.com/mrbirdd/FEBS-Cloud-Web)

### 演示地址

演示地址（服务器资源有限，没有搭建ELK）：[http://49.234.20.223:9527](http://49.234.20.223:9527)

演示环境账号密码：

账号 | 密码| 权限
---|---|---
scott | 1234qwer | 注册账户，拥有查看权限

本地部署账号密码：

账号 | 密码| 权限
---|---|---
mrbird | 1234qwer |超级管理员，拥有所有增删改查权限
scott | 1234qwer | 注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限
jane | 1234qwer |系统监测员，负责整个系统监控模块

### 服务模块

FEBS模块：

服务名称 | 端口 | 描述
---|---|---
FEBS-Register| 8001 |微服务注册中心 
FEBS-Auth| 8101| 微服务认证服务器 
FEBS-Server-System| 8201 | 微服务子系统（资源服务器）
FEBS-Server-Test|8202 | 微服务子系统（资源服务器）
FEBS-Gateway|8301|微服务网关
FEBS-Monitor-Admin|8401|微服务监控子系统
Zipkin-Server|8402|Zipkin服务器
FEBS-Config|8501|微服务配置子系统

第三方模块：

服务名称 | 端口 | 描述
---|---|---
MySQL| 3306 |MySQL 数据库 
RabbitMQ|5672|RabbitMQ 消息中间件 
Redis| 6379 | K-V 缓存数据库 
Elasticsearch|9200 | 日志存储
Logstash|4560|日志收集
Kibana|5601|日志展示

### 目录结构
```
├─febs-auth                       ------ 微服务认证服务器
├─febs-cloud                      ------ 整个项目的父模块
│  └─docker compose               ------ 存放docker compose文件
│      ├─elk                      ------ ELK docker compose文件
│      ├─febs-cloud               ------ 聚合所有微服务子项目的docker compose文件
│      └─third-part               ------ 第三方服务（MySQL，Redis等）docker compose文件
├─febs-common                     ------ 通用模块
├─febs-config                     ------ 微服务配置中心
├─febs-gateway                    ------ 微服务网关
├─febs-monitor                    ------ 微服务监控父模块
│  ├─febs-monitor-admin           ------ 微服务监控中心
│  └─zipkin-server                ------ zipkin 服务
├─febs-register                   ------ 微服务注册中心
└─febs-server                     ------ 资源服务器
   ├─febs-server-system           ------- 资源服务器系统模块
   └─febs-server-test             ------ 资源服务器demo，演示如何整合自己的微服务系统
```
### 系统截图

![1](images/1.png)

![2](images/2.png)

![3](images/3.png)

![4](images/4.png)

![5](images/5.png)

![6](images/6.png)

![7](images/7.png)

![8](images/8.png)

### 参与贡献

欢迎提交PR一起完善项目，以下为提PR并合并的小伙伴（排名不分先后）：

<a href="https://github.com/sonake">
    <img src="https://avatars3.githubusercontent.com/u/46209482?s=400&v=4" width="45px"></a>
<a href="https://github.com/mgzu">
    <img src="https://avatars1.githubusercontent.com/u/29629221?s=400&v=4" width="45px"></a>

### 反馈交流

加入QQ群和大家一起~~交流~~吹水：

![qq](images/QQ.jpg)