// https://nodejs.org/api/http.html#http_class_http_agent
module Http = {
  type t
  type config

  @obj
  external config: (
    ~keepAlive: bool=?,
    ~keepAliveMsecs: int=?,
    ~maxSockets: int=?,
    ~maxFreeSockets: int=?,
    ~timeout: int=?,
    unit,
  ) => config = ""

  @new @module("http") external create: config => t = "Agent"
}

// https://nodejs.org/api/https.html#https_class_https_agent
module Https = {
  type t
  type config

  @obj
  external config: (
    ~ca: string=?,
    ~cert: string=?,
    ~ciphers: string=?,
    ~clientCertEngine: string=?,
    ~crl: string=?,
    ~dhparam: string=?,
    ~ecdhCurve: string=?,
    ~honorCipherOrder: bool=?,
    ~key: string=?,
    ~keepAlive: bool=?,
    ~keepAliveMsecs: int=?,
    ~maxSockets: int=?,
    ~maxFreeSockets: int=?,
    ~maxCachedSessions: int=?,
    ~passphrase: string=?,
    ~pfx: string=?,
    ~rejectUnauthorized: bool=?,
    ~secureOptions: int=?,
    ~secureProtocol: string=?,
    ~servername: string=?,
    ~sessionIdContext: string=?,
    ~timeout: int=?,
    unit,
  ) => config = ""

  @new @module("https") external create: config => t = "Agent"
}
