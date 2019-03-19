#!/bin/bash

INP_DATA=$1
SPF_OUT=$2
METADATA=$3


CONVERT_CMD="biom_to_stamp.py"


if [ "$METADATA" != "unset" ] && [ "$METADATA" != "" ]
    then
        CONVERT_CMD=$CONVERT_CMD" --metadata "$METADATA
fi

CONVERT_CMD=$CONVERT_CMD" $INP_DATA > $SPF_OUT"

eval $CONVERT_CMD
