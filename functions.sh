#!/bin/bash

check_env() {
  [ -z $REPO_URL ] && exit 1
  [ -z $REPO_BRANCH ] && exit 1
}
