# instea-pod-security

Demo notes.

## Environment 
- https://killercoda.com/playgrounds/scenario/kubernetes


## Kubesec check
- install kubesec - `bash install-kubesec.sh`
- print rules - `kubesec print-rules`
- check manifest - `kubesec scan pods/default.yml`

## Kyverno
- 


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

- `git clone https://github.com/mcaniga/thesis-comparison-of-k8s-policy-enforcement-systems.git`
- `git clone https://github.com/mcaniga/thesis-comparison-of-k8s-policy-enforcement-systems.git`
- `git clone https://github.com/mcaniga/thesis-comparison-of-k8s-policy-enforcement-systems.git`
- `git clone https://github.com/mcaniga/thesis-comparison-of-k8s-policy-enforcement-systems.git`
- `git clone https://github.com/mcaniga/thesis-comparison-of-k8s-policy-enforcement-systems.git`
