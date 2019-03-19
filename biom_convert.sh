#!/bin/bash

INP_DATA=$1
CONVERTED_BIOM=$2
OUT_FORMAT=$3
HEADER_KEY=$4
OUTPUT_METADATA_ID=$5
TABLE_TYPE=$6
PROCESS_OBS_METADATA=$7
TSV_METADATA_FORMATTER=$8


BIOM_CONVERT_CMD="biom convert -i $INP_DATA -o $CONVERTED_BIOM $OUT_FORMAT"

if [ "$HEADER_KEY" != "unset" ] && [ "$HEADER_KEY" != "" ]
    then
        BIOM_CONVERT_CMD=$BIOM_CONVERT_CMD" --header-key "$HEADER_KEY
fi

if [ "$OUTPUT_METADATA_ID" != "unset" ] && [ "$OUTPUT_METADATA_ID" != "" ]
    then
        BIOM_CONVERT_CMD=$BIOM_CONVERT_CMD" --output-metadata-id "$OUTPUT_METADATA_ID
fi

if [ "$TABLE_TYPE" != "unset" ] && [ "$TABLE_TYPE" != "" ]
    then
        BIOM_CONVERT_CMD=$BIOM_CONVERT_CMD" --table-type "$TABLE_TYPE
fi

if [ "$PROCESS_OBS_METADATA" != "unset" ] && [ "$PROCESS_OBS_METADATA" != "" ]
    then
        BIOM_CONVERT_CMD=$BIOM_CONVERT_CMD" --process-obs-metadata "$PROCESS_OBS_METADATA
fi

if [ "$TSV_METADATA_FORMATTER" != "unset" ] && [ "$TSV_METADATA_FORMATTER" != "" ]
    then
        BIOM_CONVERT_CMD=$BIOM_CONVERT_CMD" --tsv-metadata-formatter "$TSV_METADATA_FORMATTER
fi

eval $BIOM_CONVERT_CMD
