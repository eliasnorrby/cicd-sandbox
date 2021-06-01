#!/usr/bin/env bash

# Given a list of task names (name@version), download the respective file to the
# 'vendor' directory and update the 'kind' to ClusterTask.

# Could use a constant for this...
BASE_URL=$(yq eval '.baseURL' ./spec.yaml)
# ...and a plain text file for this...
TASKS=$(yq eval '.tasks[]' ./spec.yaml)
# ...to avoid dependency on yq

_echo() {
  >&2 echo "$@"
}

download_task() {
  local name=${1%%@*} version=${1##*@}
  local filename="task/${name}.yaml"
  _echo "Downloading $name at $version"
  curl -sSO --output-dir 'task' "${BASE_URL}/${name}/${version}/${name}.yaml"
  echo "${filename}"
}

patch_task_kind() {
  # 'Prettier' than sed in a way, but causes edits to other parts of the file as well.
  # yq eval '.kind = "ClusterTask"' -i "${name}.yaml"
  sed -i.bak 's/^\(kind: \).*/\1ClusterTask/' "${1}" && rm "${1}.bak"
}

for task in $TASKS; do
  file=$(download_task "$task")
  patch_task_kind "$file"
done
