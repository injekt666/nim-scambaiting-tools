import random

const fakeFolders = [
  "Contacts", "Desktop", "Documents", "Downloads", "Favorites", "Links", "Docs",
  "Music", "Pictures", "Saved Games", "Searches", "Videos", "Temp", "Cache",
  "System", "System32", "Prefetch", "Photos", "Work", "Passwords", "Memes", "x",
  "Camera", "Printer", "Steam", "Spotify", "WhatsApp", "Mails", "Simple", "420",
  "Maps", "Internet", "Backup", "Archived", "Trash", "Old", "Broken", "Home",
  "iPhone", "iPad", "Notebook", "MacPro", "Alexa", "Car", "Bike", "Rent",
  "WorkPapers", "Taxes", "Presentations", "Books", "Magazines", "Gym",
]

echo """
Folder PATH listing
Volume serial number is 0000000D 5C4M:1000
C:.
"""

while true:
  echo "├───" & sample(fakeFolders)
