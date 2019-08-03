Or objects

*   always use the latest api version.
*   use an scm for storage.
*   user yaml for better readability.
*   group related API objects into a single yaml file.
*   skip adding fields for default values. e.g. `replicaSets:1 `
*   create service objects before creation ReplicationController object.
*   limit the use of specifying hostPort.
*   use multiple labels to identify sematic attributes.
*   use `kubectl create -f <directory>` whenever possible.
*   `kubectl delete` over `stop`.
*   node affinity: property of pods that attarcts (toleration) or repels (taint) them to a set of nodes.
    *   \[check and rearrange\]