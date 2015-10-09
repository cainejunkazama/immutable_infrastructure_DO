#!/bin/env bash
UUID=$(cat /proc/sys/kernel/random/uuid)
SSH_KEY_ROOT="${PWD}/artifacts/id_rsa_root_${UUID}"
ssh-keygen -t rsa -b 4096 -f "${SSH_KEY_ROOT}" -N 'deploy'