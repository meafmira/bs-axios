type configWithUrl;

type config;

type requestTransformer('data, 'headers, 'resultData);

type responseTransformer('data, 'resultData);

type paramsSerializer('a) = Js.t('a) => string;

type response('a, 'b) = {
  .
  "data": 'a,
  "status": int,
  "statusText": string,
  "headers": Js.t('b),
  "config": config,
};

type adapter('a, 'b) = config => Js.Promise.t(response('a, 'b));

type auth = {
  .
  "username": string,
  "password": string,
};

type proxy = {
  .
  "host": int,
  "port": int,
  "auth": auth,
};

type onProgress('a) = Js.t('a) => unit;

type validateStatus = int => bool;