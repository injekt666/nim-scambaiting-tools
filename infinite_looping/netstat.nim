import random, nativesockets, sequtils

const
  validPortRange = toSeq(1024..65535)
  validIpRange = toSeq(0..254)
  protocolFamilies = ["UDP", "TCP"]
  connectionStatuses = ["LISTENING", "ESTABLISHED", "TIME_WAIT"]


echo """
Active Connections

  Proto  Local Address          Foreign Address        State
"""

while true:
  echo(
    "  " & sample(protocolFamilies) & "\t" &
    $sample(validIpRange) & "." & $sample(validIpRange) & "." &
    $sample(validIpRange) & "." & $sample(validIpRange) & ":" &
    $sample(validPortRange) & "\t" & getHostname() & ":" &
    $sample(validPortRange) & "\t" & sample(connectionStatuses)
  )
