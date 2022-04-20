#!/bin/bash

load_env() {
  cat .env >> ${GITHUB_ENV}
}
