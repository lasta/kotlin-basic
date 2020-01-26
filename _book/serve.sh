#!/usr/bin/env bash
readonly SCRIPT_DIR=$(cd $(dirname $0) || exit; pwd)
gitbook serve "${SCRIPT_DIR}"/src/docs "${SCRIPT_DIR}"/docs
