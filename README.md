# instea-pod-security

Demo notes.

## Environment 
- https://killercoda.com/playgrounds/scenario/kubernetes


## Kubesec check
- clone - `https://github.com/mcaniga/instea-pod-security.git`
- install kubesec - `bash install-kubesec.sh`
- print rules - `kubesec print-rules`
- check manifest - `kubesec scan pods/default.yml`

## Kyverno
- deploy pod (OK) - `kubectl apply -f pods/default.yml`
- try to modify filesystem - `kubectl exec -i -t <pod_name> -- /bin/bash`
- install Kyverno - `kubectl create -f https://github.com/kyverno/kyverno/releases/download/v1.10.0/install.yaml`
    - for production setup use helm (replicas, ...)
- apply policy - `kubectl apply -f kyverno/filesystem-is-read-only.yml`
- deploy pod (fail) - `kubectl apply -f pods/default.yml`

## Master thesis tool
- run ONLY cluster check
```
git clone https://github.com/mcaniga/thesis-comparison-of-k8s-policy-enforcement-systems.git
cd thesis-comparison-of-k8s-policy-enforcement-systems
bash apply.sh -n test -p restricted -s ./example-settings.yaml
```

- install kyverno policies
```
bash apply.sh -n test -p kyverno -s ./example-settings.yaml
```

- install gatekeeper policies
```
bash apply.sh -n test -p gatekeeper -s ./example-settings.yaml
```

- install gatekeeper policies
```
bash apply.sh -n test -e kubewarden -s ./example-settings.yaml
```