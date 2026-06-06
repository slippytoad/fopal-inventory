# FoPAL Book Inventory

Inventory for the Friends of Palo Alto Library shelves.

- `index.html` - public view-only page (fetches inventory-data.json live)
- `BookstoreInventory.html` - private editor; connect it to inventory-data.json and changes auto-save
- `inventory-data.json` - the master inventory data
- `update.sh` - run after editing to publish the latest data
