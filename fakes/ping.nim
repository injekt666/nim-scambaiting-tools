import os

echo """
Pinging """ & paramStr(1) & """ with 32 bytes of data:
General failure.
General failure.
General failure.
General failure.

Ping statistics for """ & paramStr(1) & """:
    Packets: Sent = 4, Received = 0, Lost = 4 (100% loss),
"""
