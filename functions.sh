#!/bin/bash

load_env() {
  grep -v -e '^#' -e '^\s*$' .env >> ${GITHUB_ENV}
}
