#!/usr/bin/env bash
readonly SCRIPT_DIR=$(cd $(dirname $0); pwd)
gitbook build ${SCRIPT_DIR}/src/docs ${SCRIPT_DIR}/docs
