#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
#set -o xtrace

aws s3 sync . s3://mozillafestival-org-2014-production-s3bucket-zcefw6wlbeg9 --exclude ".git/*" --exclude deploy.sh --cache-control public,max-age=300 --delete
