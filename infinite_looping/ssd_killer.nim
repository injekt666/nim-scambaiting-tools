import os

const fileName = "scammer.txt"
const fileContents = """\n"""
# const fileContents = staticRead("somefile.txt")

let filepath = getTempDir() / fileName

while true:
  writeFile(filepath, fileContents)
  discard tryRemoveFile(filepath)
