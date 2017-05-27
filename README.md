# Toolings for Continuous Delivery
本 repo 主要以 AWS CodePipeline 作為基楚去實作一些 CD flow。

## 關於 CI／CD

CI 是 Continuous Integration，中文是持續整合，簡單來說就是持續地 push commit 上 central repository 如 github，通過 CI server 做 unit tests，pass 就 merge，fail 就不 merge。

CD 是 Continuous Delivery，中文是持續交付，簡單來說就是有新 merge 之後，自動 trigger build, 做 testing，甚至部置上 production。CD 的 testing 通常是指 integration test。有人經常強調 Continuous Delivery 跟 Continous Deployment 不一樣，其實都沒有所謂，總言之目標都是希望把由 code commit 到部置上 production 的流程自動化，從而提高生產效率。

 一圖勝千言
![alt text](https://d0.awsstatic.com/product-marketing/DevOps/continuous_delivery.png)

## 關於 CI／CD 團隊

AWS 建議分三組去滿足 CI／CD 的流程：
* Tools team
* Application team
* Infrastructure team

Tools team 提供有關 CI/CD 所需工具，如建設 AWS CodePipeline。Application team 主要就是 programmer，他們轉注於寫 code，只想跟 github 打交道。Infrastructure team 當然就是搞 infrastructure。但如果是採用 serverless architecture 的話，會少了很多跟 EC2 有關的 config 如 AWS Auto Scaling、AWS ELB 等。那麼 infrastructure team 主要就搞 networking 如 AWS Route53 或 AWS Cloudfront 等。

To be continuous...