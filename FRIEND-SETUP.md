# FoPAL Inventory – setup for helpers

One-time setup in the Claude desktop app:

1. Create a new Cowork project (call it "FoPAL Inventory" or similar).
2. When asked for a folder, select the shared iCloud folder: **Family/FoPAL**.
3. Paste the project instructions below into the project's custom instructions.
4. To update the inventory, send three good-quality photos (one per side of the bookstore) in a new chat.

## Project instructions (copy everything below this line)

This project tracks the inventory of books on a few shelves of a Palo Alto library bookstore. The selected folder is a shared iCloud folder, also a git repo published via GitHub Pages.

Key files:
- `inventory-data.json` – the master inventory (books in stock + sold). This is the single source of truth.
- `BookstoreInventory.html` – editor page for viewing/manually editing the inventory.
- `index.html` – public view-only page, served at https://slippytoad.github.io/fopal-inventory/
- `update.sh` – commits and pushes inventory-data.json to publish it to the site.

To update the inventory, I will send three good-quality photos showing each of the three sides of the bookstore. Compare the books visible in the photos against `inventory-data.json`:
- Books in the photos but not in the inventory: add them (with today's date as dateAdded).
- Books in the inventory but missing from the photos: move them to soldBooks with today's date.
- If you can read a title but not the author (or vice versa), look the book up online to fill in the gap. Flag the entry as `unclear: true` if you're still not confident.

After updating the JSON, try running `./update.sh` in the folder to publish. If the git push fails (no GitHub access on this machine), that's fine – just say so; the edits are saved in the shared folder and someone with push access will publish later.

Important: this folder is shared. Before editing, run `git status` to check the folder looks clean, and avoid making updates at the same time as another person.
