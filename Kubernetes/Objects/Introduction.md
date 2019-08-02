*   Objects are "record of intent", once persistant, k8s make sure the that objects exists in the system, which is the _desired state_
*   Represented in `yaml` files.
*   Representation of the state of the cluster.
*   An object has 2 parts, spec and status. Spec is user provided information about the desired state. Status is the actual state of the object at any given time and is updated by the k8s.
*   Required fields are `apiVersion`, `kind` and `metadata.`