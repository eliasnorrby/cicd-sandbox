# code reuse

The scripts in `scripts` can share code stored in `library.sh`.

Run them locally:

```bash
./scripts/build-step.sh
```

Run them in a tekton task:

```bash
# create cluster, install tekton
kubectl apply -k demos/code-reuse
kubectl apply -f demos/code-reuse/task.yaml
tkn task start task-with-code-reuse
tkn taskrun logs --last -f
```
