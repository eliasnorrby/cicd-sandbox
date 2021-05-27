# cicd-sandbox

Experimentation with:
- kind
- terraform
- kustomize
- helm
- argocd
- tekton

## Gettings started

```bash
cd terraform
terraform init
terraform apply
cd ../tekton
./install-tekton.sh
```

## Useful commands

```
kubectl config set-context --current --namespace=tekton-pipelines
```
