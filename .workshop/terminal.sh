#!/bin/bash

export PREPROD_CLUSTER_URL=https://api.cluster-jday-dev-a3d6.jday-dev-a3d6.example.opentlc.com:6443
export PROD_CLUSTER_URL=https://api.cluster-jday-prd-611a.jday-prd-611a.example.opentlc.com:6443
export PROD_CLUSTER_USER_PWD=openshift
export EXTERNAL_IMAGE_REGISTRY_URI=quay.io
export EXTERNAL_IMAGE_REGISTRY=$EXTERNAL_IMAGE_REGISTRY_URI/javadayistanbul2020
export EXTERNAL_IMAGE_REGISTRY_USER_NAME=javadayistanbul2020+robot_user
export EXTERNAL_IMAGE_REGISTRY_PASSWORD=J1OKEDZ56RWZWVJYL7QF0BLNKY1TVMEV4SDY0YNEJKS0FL97KEYGURCD8QNJ2ICK