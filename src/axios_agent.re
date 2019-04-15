// https://nodejs.org/api/http.html#http_class_http_agent
module Http = {
  type t;

  [@bs.deriving abstract]
  type config = {
    [@bs.optional]
    keepAlive: bool,
    [@bs.optional]
    keepAliveMsecs: int,
    [@bs.optional]
    maxSockets: int,
    [@bs.optional]
    maxFreeSockets: int,
    [@bs.optional]
    timeout: int,
  };

  [@bs.module "http"] [@bs.new] external create: config => t = "Agent";
};

// https://nodejs.org/api/https.html#https_class_https_agent
module Https = {
  type t;

  [@bs.deriving abstract]
  type config = {
    [@bs.optional]
    ca: string,
    [@bs.optional]
    cert: string,
    [@bs.optional]
    ciphers: string,
    [@bs.optional]
    clientCertEngine: string,
    [@bs.optional]
    crl: string,
    [@bs.optional]
    dhparam: string,
    [@bs.optional]
    ecdhCurve: string,
    [@bs.optional]
    honorCipherOrder: bool,
    [@bs.optional]
    key: string,
    [@bs.optional]
    keepAlive: bool,
    [@bs.optional]
    keepAliveMsecs: int,
    [@bs.optional]
    maxSockets: int,
    [@bs.optional]
    maxFreeSockets: int,
    [@bs.optional]
    maxCachedSessions: int,
    [@bs.optional]
    passphrase: string,
    [@bs.optional]
    pfx: string,
    [@bs.optional]
    rejectUnauthorized: bool,
    [@bs.optional]
    secureOptions: int,
    [@bs.optional]
    secureProtocol: string,
    [@bs.optional]
    servername: string,
    [@bs.optional]
    sessionIdContext: string,
    [@bs.optional]
    timeout: int,
  };

  [@bs.module "https"] [@bs.new] external create: config => t = "Agent";
};
