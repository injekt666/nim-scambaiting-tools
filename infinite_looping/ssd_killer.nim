import os

const fileName = "scammer.txt"
const fileContents = """\n"""
# const fileContents = staticRead("somefile.txt")

let filename = getTempDir() / fileName

while true:
  writeFile(filename, fileContents)
  discard tryRemoveFile(filename)
