type configWithUrl = {"url": string}

type config = {}

type requestTransformer<'data, 'headers, 'resultData>

type responseTransformer<'data, 'resultData>

type paramsSerializer<'a> = 'a => string

type response<'data, 'header> = {
  "data": 'data,
  "status": int,
  "statusText": string,
  "headers": 'header,
  "config": config,
}

type adapter<'data, 'headers> = config => promise<response<'data, 'headers>>

type auth = {"username": string, "password": string}

type proxy = {"host": string, "port": int, "auth": auth}

type onProgress<'a> = 'a => unit

type validateStatus = int => bool
