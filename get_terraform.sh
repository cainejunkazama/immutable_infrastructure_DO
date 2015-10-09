#!/bin/env bash

ARTIFACTS="${PWD}/artifacts"
TERRAFORM_VERSION="terraform_0.6.3_linux_amd64.zip"
TERRAFORM_URL="https://dl.bintray.com/mitchellh/terraform/${TERRAFORM_VERSION}"

if [ -d "${ARTIFACTS}" ]
then
    echo "artifacts folder found - removing files"
    rm -rf "${ARTIFACTS}/*"
else
    echo "Creating artifacts folder"
    mkdir "${ARTIFACTS}"
fi

if [ -d "${ARTIFACTS}/terraform" ]
then
    echo "Deleting leftover folder"
    rm -rf "${ARTIFACTS}/terraform"
fi

if [ -e "${ARTIFACTS}/terraform_0.6.3_linux_amd64.zip" ]
then
    echo "Deleting leftover file"
    rm -rf "${ARTIFACTS}/terraform_0.6.3_linux_amd64.zip"
fi

curl -LS -o ${ARTIFACTS}/${TERRAFORM_VERSION} ${TERRAFORM_URL}

unzip "${ARTIFACTS}/terraform_0.6.3_linux_amd64.zip" -d "${ARTIFACTS}/terraform"

export PATH="${ARTIFACTS}/terraform:${PATH}"

terraform --version