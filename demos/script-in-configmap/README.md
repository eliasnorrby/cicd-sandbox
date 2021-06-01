# Script in configmap

Follow the recommendations in [tektoncd/catalog][recommendations].

[recommendations]: https://github.com/tektoncd/catalog/blob/main/recommendations.md#extract-task-code-scripts-to-their-own-files

Use kustomize and a configMapGenerator to make a set of scripts available to tasks.
