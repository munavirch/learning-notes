Master
------

*   k8s master components can be run on any node. For simplicity, k8s run all components in the master node and do not run any containers in master node.
*   **kube-apiserver** - the Kubernetes API. Frontend for the kubernetes control plane. Desinged for HA - scales horizontally.
*   **etcd** - key value datastore, should plan for backup.
*   **kube-scheduler** - responsible for scheduling newly created pods to nodes.
*   **kube-control-manager** - components that runs controllers like node controller
*   **cloud-control-manager** - runs controllers that interacts with underlying cloud providers.

Node
----

*   Node component runs on every node.
*   **kubelet** - an agent running in on all nodes to make sure that containers are running in a pod. makes sure that containers are in match with `PodSpec`
*   **kube-proxy** - maintains network rules in node. network rules allows traffic from network sessions inside and outside of the cluster.
*   **container-runtime** - k8s supports many container runtimes, mainly docker.

Addons
------

*   Provides cluster level features
*   **DNS** - DNS server which servers records for k8s services.
*   **WebUI**
*   **Container Resource Monitoring**
*   **Cluster Level Logging**