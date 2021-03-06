---
title: "超时"
metaTitle: "超时 | Hasura GraphQL 高级教程"
metaDescription: "另一个攻击载体是编写需要很长时间才能执行的查询。大致有两类超时：数据库超时和 HTTP 超时"
---

另一个攻击载体是编写需要很长时间才能执行的查询。大致有两类超时：

*数据库超时*：如果数据库连接或查询需要很长时间才能响应，Hasura 可以返回超时错误。Postgres 中有一个 statement_timeout 设置，如果执行时间超过指定的毫秒数，则会中止任何语句的执行。这只是数据库层中的配置（本用例中是 Postgres）。

*HTTP 超时*：如果使用操作/远程模式/事件，你应该会为相应的请求配置 http 端点。你也可以配置超时设置，以中止查询的执行。http 端点在其底层逻辑中进行不同的查询，建议配置超时，以退出连接并快速响应客户端。
