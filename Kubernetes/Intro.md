*   Kubernetes is an open source cloud platform. It is also a application platform where application deployments are at ease by automatic infrastructure provisioning.
*   k8s is a portable, extensible and open source platform for managing containarized workloads and services, that fecilitates both declarative configuration and automation.
*   Usually installed on top of a public cloud IaaS. Can be installed on on-prem bare metal too.
*   Storage orchestated, self-healing, service discovery and load-balancing and secret and configuration management.
*   Component Architecture:-
    *   k8s master exposes a REST API that users can consume in order to interact with k8s platform.
    *   The master comminicates with kublets in each node to maintain state of the cluster.
    *   Developers can use `kubectl` command line tool to access the REST API.
*   A node can be either physical or virtual host.
*   Enterprise distributions:-
    *   RedHat OpenShift
    *   Canonical
*   A k8s object holds below details:-
    *   What containerized applications are running and on which node.
    *   Resources available to those apps
    *   Policies on how application behave.
    *   Objects are defined using `yaml` files with 2 parts, spec and status.
    *   spec - specifies the desired state for the object. These information are user managed.
    *   status - current status of the object and info are by k8s system.