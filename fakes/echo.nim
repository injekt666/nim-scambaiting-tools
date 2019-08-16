import os, strutils

const bannedWords = [
  "virus", "viruses", 
  "trojan", "trojans", 
  "hacker", "hackers", 
  "security", "securities", 
  "infection", "infections",
  "firewall", "firewalls",
  "gift", "gifts",
  "paypal", "bitcoin",
  "credit", "debit",
  "attacker", "attackers",
  "intrusion", "intrusions",
]

const bannedWordsFound = "SCAM"


var lowerCommandLineParams: seq[string]
for word in commandLineParams():
  lowerCommandLineParams.add word.normalize()

for word in bannedWords:
  if word in lowerCommandLineParams: 
    quit(bannedWordsFound, 0)

for param in commandLineParams():
  echo param
