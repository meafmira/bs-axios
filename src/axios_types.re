type configWithUrl = {. "url": string};

type config = Js.t({.});

type transformer('a, 'b) = 'a => 'b;

type paramsSerializer('a) = Js.t('a) => string;

type response('a, 'b) = {
  .
  "data": 'a, "status": int, "statusText": string, "headers": Js.t('b), "config": config
};

type adapter('a, 'b) = config => Js.Promise.t(response('a, 'b));

type auth = {. "username": string, "password": string};

type proxy = {. "host": int, "port": int, "auth": auth};

type onProgress('a) = Js.t('a) => unit;

type validateStatus = int => bool;

[@bs.obj]
external makeConfig :
  (
    ~url: string=?,
    ~method: string=?,
    ~baseURL: string=?,
    ~transformRequest: transformer('a, 'b)=?,
    ~headers: Js.t('headers)=?,
    ~params: Js.t('params)=?,
    ~paramsSerializer: paramsSerializer('params)=?,
    ~data: Js.t('data)=?,
    ~timeout: int=?,
    ~withCredentials: Js.boolean=?,
    ~adapter: adapter('a, 'b)=?,
    ~auth: auth=?,
    ~responseType: string=?,
    ~xsrfCookieName: string=?,
    ~xsrfHeaderName: string=?,
    ~onUploadProgress: onProgress('uploadProgress)=?,
    ~onDownloadProgress: onProgress('downloadProgress)=?,
    ~maxContentLength: int=?,
    ~validateStatus: validateStatus=?,
    ~maxRedirects: int=?,
    ~proxy: proxy=?,
    unit
  ) =>
  config =
  "";

[@bs.obj]
external makeConfigWithUrl :
  (
    ~url: string,
    ~method: string=?,
    ~baseURL: string=?,
    ~transformRequest: transformer('a, 'b)=?,
    ~headers: Js.t('headers)=?,
    ~params: Js.t('params)=?,
    ~paramsSerializer: paramsSerializer('params)=?,
    ~data: Js.t('data)=?,
    ~timeout: int=?,
    ~withCredentials: Js.boolean=?,
    ~adapter: adapter('a, 'b)=?,
    ~auth: auth=?,
    ~responseType: string=?,
    ~xsrfCookieName: string=?,
    ~xsrfHeaderName: string=?,
    ~onUploadProgress: onProgress('uploadProgress)=?,
    ~onDownloadProgress: onProgress('downloadProgress)=?,
    ~maxContentLength: int=?,
    ~validateStatus: validateStatus=?,
    ~maxRedirects: int=?,
    ~proxy: proxy=?,
    unit
  ) =>
  configWithUrl =
  "";