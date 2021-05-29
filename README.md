# cicd-sandbox

Experimentation with:

- kind
- terraform
- kustomize
- helm
- argocd
- tekton

## Use cases

### Semi-persistent local dev environment

### e2e testing environment

## Getting started

```bash
cd terraform
terraform init
terraform apply
cd ../tekton
./install-tekton.sh
```

## Useful commands

```bash
kubectl config set-context --current --namespace=tekton-pipelines
```

