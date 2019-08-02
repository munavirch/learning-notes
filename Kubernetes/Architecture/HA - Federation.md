*   Sits on top of the k8s clusters control layers.
*   Federated API server and control manager on top of the clusters.
*   Federated deployments can be spread out to multiple AZs thus providing more uptime.
*   Low latency using geo-distributes AZs
*   Fault isolation.
*   Hybrid cloud - using federation, k8s can be expanded easily to on-prem.

Cons

*   Increased NW BW and cost.
*   Reduced cluster isolation since multiple Pods are distributed across AZs. \[check\]
*   Low maturity - comparitively new feature.

Federation Control Pane