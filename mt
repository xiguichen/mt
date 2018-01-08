#!/bin/bash

COMMAND=$1
if [[ ! -d $COMMAND ]]; then
    echo "Command $COMMAND not exists"
    exit 1
fi

VT_HOME=${VT_HOME?VT HOME not defined}

SUB_COMMAND=${VT_HOME}/${COMMAND}/$2.sh

if [[ ! -f $SUB_COMMAND ]]; then
    echo "${SUB_COMMAND} not exists"
    exit 1
fi

shift
shift
$SUB_COMMAND $*
