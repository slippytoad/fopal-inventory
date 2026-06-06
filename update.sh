#!/bin/bash
# Publish the latest inventory: run this after making changes in BookstoreInventory.html.
cd "$(dirname "$0")"
git add inventory-data.json
git commit -m "Update inventory $(date +%Y-%m-%d)"
git push
echo "Published. Site updates in about a minute."
