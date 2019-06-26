# emqx-start

[![Build Status](https://secure.travis-ci.org/elasticjob/elastic-job-lite.png?branch=master)](https://travis-ci.org/elasticjob/elastic-job-lite)
[![Maven Status](https://maven-badges.herokuapp.com/maven-central/com.dangdang/elastic-job-lite/badge.svg)](https://maven-badges.herokuapp.com/maven-central/com.dangdang/elastic-job-lite)
[![Gitter](https://badges.gitter.im/Elastic-JOB/elastic-job-lite.svg)](https://gitter.im/Elastic-JOB/elasticjob?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Coverage Status](https://coveralls.io/repos/elasticjob/elastic-job/badge.svg?branch=master&service=github)](https://coveralls.io/github/elasticjob/elastic-job?branch=master)
[![GitHub release](https://img.shields.io/github/release/elasticjob/elastic-job.svg)](https://github.com/elasticjob/elastic-job/releases)
[![License](https://img.shields.io/badge/license-Apache%202-4EB1BA.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)

### 参考
https://developer.emqx.io/docs/broker/v3/cn/install.html#docker
https://github.com/emqx/emqx-docker

### 创建emqx容器 单机模式
```text
cd service/docker-start
sh emqx.sh
```
### 创建多个emqx容器 集群模式
```text
cd service/docker-start
sh emqx-cluster.sh
```

### 控制台访问

```text
使用http://127.0.0.1:18083/ 进行访问了，账号密码默认为admin&public
```

### 测试调用
```text
http://127.0.0.1:8081/rabbitmq/123
查看product，consumer控制台输出内容
```
