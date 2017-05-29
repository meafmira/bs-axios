type config;

type transformer 'a 'b = 'a => 'b;

type paramsSerializer 'a = Js.t 'a => string;

type response 'a 'b = {
  .
  data : 'a, status : int, statusText : string, headers : Js.t 'b, config : config
};

type adapter 'a 'b = config => Js.Promise.t (response 'a 'b);

type auth = {. username : string, password : string};

type proxy = {. host : int, port : int, auth : {. username : string, password : string}};

type onProgress 'a = Js.t 'a => unit;

type validateStatus = int => bool;

external makeConfig :
  url::string =>
  method::string? =>
  baseURL::string? =>
  /*transformRequest::transformer 'a 'b? =>*/
  /*headers::Js.t 'a? =>*/
  /*params::Js.t 'a? =>*/
  /*paramsSerializer::paramsSerializer 'a? =>*/
  /*data::Js.t 'a? =>*/
  timeout::int? =>
  withCredentials::bool? =>
  /*adapter::adapter 'a 'b? =>*/
  auth::auth? =>
  responseType::string? =>
  xsrfCookieName::string? =>
  xsrfHeaderName::string? =>
  /*onUploadProgress::onProgress 'a? =>*/
  /*onDownloadProgress::onProgress 'a? =>*/
  maxContentLength::int? =>
  validateStatus::validateStatus? =>
  maxRedirects::int? =>
  proxy::proxy? =>
  unit =>
  config =
  "" [@@bs.obj];

/*request(config: AxiosRequestConfig): AxiosPromise;
  get(url: string, config?: AxiosRequestConfig): AxiosPromise;
  delete(url: string, config?: AxiosRequestConfig): AxiosPromise;
  head(url: string, config?: AxiosRequestConfig): AxiosPromise;
  post(url: string, data?: any, config?: AxiosRequestConfig): AxiosPromise;
  put(url: string, data?: any, config?: AxiosRequestConfig): AxiosPromise;
  patch(url: string, data?: any, config?: AxiosRequestConfig): AxiosPromise;*/
external request : config => Js.Promise.t (response 'a 'b) = "" [@@bs.module "axios"];

external get : string => Js.Promise.t (response 'a 'b) = "" [@@bs.module "axios"];

external getc : string => config => Js.Promise.t (response 'a 'b) = "get" [@@bs.module "axios"];

external delete : string => Js.Promise.t (response 'a 'b) = "" [@@bs.module "axios"];

external deletec : string => config => Js.Promise.t (response 'a 'b) =
  "delete" [@@bs.module "axios"];

external post : string => Js.Promise.t (response 'a 'b) = "" [@@bs.module "axios"];

external postData : string => Js.t 'a => Js.Promise.t (response 'b 'c) =
  "post" [@@bs.module "axios"];

external postDatac : string => Js.t 'a => config => Js.Promise.t (response 'a 'b) =
  "post" [@@bs.module "axios"];

external put : string => Js.Promise.t (response 'a 'b) = "" [@@bs.module "axios"];

external putData : string => Js.t 'a => Js.Promise.t (response 'b 'c) =
  "put" [@@bs.module "axios"];

external putDatac : string => Js.t 'a => config => Js.Promise.t (response 'a 'b) =
  "put" [@@bs.module "axios"];

external patch : string => Js.Promise.t (response 'a 'b) = "" [@@bs.module "axios"];

external patchData : string => Js.t 'a => Js.Promise.t (response 'b 'c) =
  "patch" [@@bs.module "axios"];

external patchDatac : string => Js.t 'a => config => Js.Promise.t (response 'a 'b) =
  "patch" [@@bs.module "axios"];
