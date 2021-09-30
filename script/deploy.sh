#!/bin/bash
set -euxo pipefail

npm run build
cp -R docs _book

npm install --global surge
surge --project ./_book --domain td-frontend-translation.surge.sh
