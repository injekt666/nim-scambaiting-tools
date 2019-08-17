import os, strutils, times

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
  "malware", "malwares",
]

const message4scam = "SCAM"


var lowerCommandLineParams: seq[string]
for word in commandLineParams():
  lowerCommandLineParams.add word.normalize()

for word in bannedWords:
  if word in lowerCommandLineParams:
    quit(message4scam, 0)


echo commandLineParams().join(" ")
