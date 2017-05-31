type config = Js.t {.};

type configWithUrl = Js.t {. url : string};

type response 'a 'b =
  Js.t {. data : 'a, status : int, statusText : string, headers : Js.t 'b, config : config};

type transformer 'a 'b;

type paramsSerializer 'a;

type adapter 'a 'b;

type auth;

type onProgress 'a;

type validateStatus;

type proxy;

external makeConfig :
  url::string? =>
  method::string? =>
  baseURL::string? =>
  transformRequest::transformer 'a 'b? =>
  headers::Js.t 'headers? =>
  params::Js.t 'params? =>
  paramsSerializer::paramsSerializer 'params? =>
  data::Js.t 'data? =>
  timeout::int? =>
  withCredentials::Js.boolean? =>
  adapter::adapter 'a 'b? =>
  auth::auth? =>
  responseType::string? =>
  xsrfCookieName::string? =>
  xsrfHeaderName::string? =>
  onUploadProgress::onProgress 'uploadProgress? =>
  onDownloadProgress::onProgress 'downloadProgress? =>
  maxContentLength::int? =>
  validateStatus::validateStatus? =>
  maxRedirects::int? =>
  proxy::proxy? =>
  unit =>
  config =
  "" [@@bs.obj];

external makeConfigWithUrl :
  url::string =>
  method::string? =>
  baseURL::string? =>
  transformRequest::transformer 'a 'b? =>
  headers::Js.t 'headers? =>
  params::Js.t 'params? =>
  paramsSerializer::paramsSerializer 'params? =>
  data::Js.t 'data? =>
  timeout::int? =>
  withCredentials::Js.boolean? =>
  adapter::adapter 'a 'b? =>
  auth::auth? =>
  responseType::string? =>
  xsrfCookieName::string? =>
  xsrfHeaderName::string? =>
  onUploadProgress::onProgress 'uploadProgress? =>
  onDownloadProgress::onProgress 'downloadProgress? =>
  maxContentLength::int? =>
  validateStatus::validateStatus? =>
  maxRedirects::int? =>
  proxy::proxy? =>
  unit =>
  configWithUrl =
  "" [@@bs.obj];

let all: array (Js.Promise.t (response _ _)) => Js.Promise.t (array (response _ _));

let request: configWithUrl => Js.Promise.t (response 'a 'b);

let get: string => Js.Promise.t (response 'a 'b);

let getc: string => config => Js.Promise.t (response 'a 'b);

let delete: string => Js.Promise.t (response 'a 'b);

let deletec: string => config => Js.Promise.t (response 'a 'b);

let post: string => Js.Promise.t (response 'a 'b);

let postData: string => Js.t 'a => Js.Promise.t (response 'b 'c);

let postDatac: string => Js.t 'a => config => Js.Promise.t (response 'a 'b);

let put: string => Js.Promise.t (response 'a 'b);

let putData: string => Js.t 'a => Js.Promise.t (response 'b 'c);

let putDatac: string => Js.t 'a => config => Js.Promise.t (response 'a 'b);

let patch: string => Js.Promise.t (response 'a 'b);

let patchData: string => Js.t 'a => Js.Promise.t (response 'b 'c);

let patchDatac: string => Js.t 'a => config => Js.Promise.t (response 'a 'b);
