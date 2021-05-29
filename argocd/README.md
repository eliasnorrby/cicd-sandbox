# argocd

[Getting started guide][getting-started]

```bash
./install-argocd.sh
# get the initial admin password
kubectl -n argocd get secret argocd-initial-admin-secret \
  -o jsonpath='{.data.password}' | base64 -d
# update the password
argocd account update-password
# create an app
argocd app create guestbook \
  --repo https://github.com/argoproj/argocd-example-apps.git \
  --path guestbook \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default
# access the argocd console
kubectl port-forward svc/argocd-server 8080:443
# access the deployed app
kubectl port-forward svc/guestbook-ui 8081:80
```

[getting-started]: https://argoproj.github.io/argo-cd/getting_started/
