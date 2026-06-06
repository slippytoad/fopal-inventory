#!/bin/bash
# Publish the latest inventory: run this from the inventory-site folder
# after the inventory-data.json in the FoPAL folder has changed.
cd "$(dirname "$0")"
cp ../inventory-data.json inventory-data.json
git add inventory-data.json
git commit -m "Update inventory $(date +%Y-%m-%d)"
git push
echo "Published. Site updates in about a minute."
