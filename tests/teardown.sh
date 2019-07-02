#!/bin/bash
this_dir=$(dirname "$0")
source $this_dir/tests_common.sh
source $this_dir/../scripts/common.sh
TEST_KEY_NAME=$(ssh_key_name_for_job)
ssh_key_delete_if_exists $TEST_KEY_NAME
./scripts/vpc-cleanup.sh $TEST_VPC_NAME -f
