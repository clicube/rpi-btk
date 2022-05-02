#! /bin/bash

docker run -it --rm \
  -v $(pwd)/ansible:/runner \
  -v $(pwd)/keys/id_ed25519:/root/.ssh/id_ed25519 \
  quay.io/ansible/ansible-runner \
  ansible-runner run /runner \
    -p main.yml \
    --artifact-dir /tmp/ansible/artifact
