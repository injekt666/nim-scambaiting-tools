import httpclient, tinyfiledialogs

let ip = newHttpClient(userAgent="", timeout=5000).getContent("http://api.ipify.org")

echo tinyfd_messageBox(ip, ip, "ok", "info", 1)
