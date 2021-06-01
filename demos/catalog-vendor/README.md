# Tekton catalog integration

**Idea**: Download a set of tasks from tektoncd/catalog and use kustomize to update 'kind' to `ClusterTask`.

**Result**: Fails, because kustomize cannot be used to edit the top level 'kind' attribute.

**Solution**: Use `sed` to update the value on download instead. Drawback: downloaded file does not match source.
