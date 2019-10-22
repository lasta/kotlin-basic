#!/usr/bin/env bash
readonly SCRIPT_DIR=$(cd $(dirname $0); pwd)
gitbook build ${SCRIPT_DIR} ${SCRIPT_DIR}/docs
