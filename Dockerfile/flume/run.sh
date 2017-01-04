#!/bin/bash

FLUME_CONF_DIR=${FLUME_CONF_DIR:-/usr/local/flume/conf}
FLUME_CONF_FILE=${FLUME_CONF_FILE:-/usr/local/flume/conf/flume-default.conf}
FLUME_AGENT_NAME=${FLUME_AGENT_NAME:-a1}

FLUME_LOG_LEVEL=${FLUME_LOG_LEVEL:-INFO}

#[[ -z "${FLUME_CONF_FILE}"  ]] && { echo "FLUME_CONF_FILE required";  exit 1; }
#[[ -z "${FLUME_AGENT_NAME}" ]] && { echo "FLUME_AGENT_NAME required"; exit 1; }

echo "Starting flume agent : ${FLUME_AGENT_NAME}"

flume-ng agent \
  -c ${FLUME_CONF_DIR} \
  -f ${FLUME_CONF_FILE} \
  -n ${FLUME_AGENT_NAME} \
  -Dflume.root.logger=${FLUME_LOG_LEVEL},console