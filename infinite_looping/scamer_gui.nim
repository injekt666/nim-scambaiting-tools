import tinyfiledialogs

const
  title = "AntiScamm Scanner"
  message = "Scammer Fake Tech Support found connected remotely"


while true:
  echo tinyfd_messageBox(title, message, "ok", "info", 1)
