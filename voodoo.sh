#!bin/env bash
. ${PWD}/get_terraform.sh
#. ${PWD}/generate_ssh_key.sh
. ${PWD}/set_env_vars.sh
. ${PWD}/run_terraform_plan.sh
. ${PWD}/run_terraform_apply.sh
#. ${PWD}/configure_server.sh
#. ${PWD}/test_server.sh
#. ${PWD}/run_terraform_destroy.sh