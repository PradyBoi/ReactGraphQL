---
title: "認証"
metaTitle: "Hasuraによる認証 | Hasura GraphQLチュートリアル"
metaDescription: "ここでは、Auth0などの認証プロバイダーと統合することで、Hasura GraphQL Engineで認証を行う方法を学びます。"
---

ここでは、認証プロバイダーを統合する方法を紹介します。

リアルタイムtodoアプリは、ログインインターフェースで保護する必要があります。この例では、[Auth0](https://auth0.com)をID/認証プロバイダーとして使用します。

**注**：Auth0には、最大7000人のアクティブユーザーに対応する無料プランがあります。

基本的には、ユーザーがAuth0で認証するたびに、クライアントアプリがトークンを受信し、すべてのGraphQL要求の `Authorization` ヘッダーに送信できるという発想です。Hasura GraphQL Engineは、トークンが有効であるかどうかを確認し、ユーザーが適切なクエリを実行できるようにします。

始めましょう。