#!/usr/bin/env bashio
CONFIG_PATH="/data/options.json"
export SANED_NET_HOSTS=$(jq -r '.saned_net_hosts' $CONFIG_PATH)
export AIRSCAN_DEVICES=$(jq -r '.airscan_devices' $CONFIG_PATH)
export SCANIMAGE_LIST_IGNORE=$(jq -r '.scanimage_list_ignore' $CONFIG_PATH)
export DEVICES=$(jq -r '.devices' $CONFIG_PATH)
export OCR_LANG=$(jq -r '.ocr_lang' $CONFIG_PATH)
export COPY_SCANS_TO=$(jq -r '.copy_scans_to' $CONFIG_PATH)

mkdir -p $COPY_SCANS_TO

/entrypoint.sh
