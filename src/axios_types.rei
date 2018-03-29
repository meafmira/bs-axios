type configWithUrl;

type config;

type requestTransformer('data, 'headers, 'resultData);

type responseTransformer('data, 'resultData);

type paramsSerializer('a);

type response('a, 'b) = {
  .
  "data": 'a,
  "status": int,
  "statusText": string,
  "headers": Js.t('b),
  "config": config,
};

type adapter('a, 'b);

type auth;

type proxy;

type onProgress('a);

type validateStatus = int => bool;