open Axios_types;

module Headers: {
  type t;

  let fromObj: Js.t({..}) => t;
  let fromDict: Js.Dict.t(string) => t;
};

let makeResponseTransformer1:
  ('data => 'resultData) => responseTransformer('data, 'resultData);

let makeResponseTransformer2:
  ('data => 'data0, 'data0 => 'resultData) =>
  responseTransformer('data, 'resultData);

let makeResponseTransformer3:
  ('data => 'data0, 'data0 => 'data1, 'data1 => 'resultData) =>
  responseTransformer('data, 'resultData);

let makeResponseTransformer4:
  (
    'data => 'data0,
    'data0 => 'data1,
    'data1 => 'data2,
    'data2 => 'resultData
  ) =>
  responseTransformer('data, 'resultData);

let makeResponseTransformer5:
  (
    'data => 'data0,
    'data0 => 'data1,
    'data1 => 'data2,
    'data2 => 'data3,
    'data3 => 'resultData
  ) =>
  responseTransformer('data, 'resultData);

let makeRequestTransformer1:
  (('data, Headers.t) => 'resultData) =>
  requestTransformer('data, Headers.t, 'resultData);

let makeRequestTransformer2:
  (('data, Headers.t) => 'data0, ('data0, Headers.t) => 'resultData) =>
  requestTransformer('data, Headers.t, 'resultData);

let makeRequestTransformer3:
  (
    ('data, Headers.t) => 'data0,
    ('data0, Headers.t) => 'data1,
    ('data1, Headers.t) => 'resultData
  ) =>
  requestTransformer('data, Headers.t, 'resultData);

let makeRequestTransformer4:
  (
    ('data, Headers.t) => 'data0,
    ('data0, Headers.t) => 'data1,
    ('data1, Headers.t) => 'data2,
    ('data2, Headers.t) => 'resultData
  ) =>
  requestTransformer('data, Headers.t, 'resultData);

let makeRequestTransformer5:
  (
    ('data, Headers.t) => 'data0,
    ('data0, Headers.t) => 'data1,
    ('data1, Headers.t) => 'data2,
    ('data2, Headers.t) => 'data3,
    ('data3, Headers.t) => 'resultData
  ) =>
  requestTransformer('data, Headers.t, 'resultData);

[@bs.obj]
external makeConfig:
  (
    ~url: string=?,
    ~_method: string=?,
    ~baseURL: string=?,
    ~transformRequest: requestTransformer(
                         'postData,
                         Headers.t,
                         'resultPostData,
                       )
                         =?,
    ~transformResponse: responseTransformer('data, 'resultData)=?,
    ~headers: Headers.t=?,
    ~params: Js.t('params)=?,
    ~paramsSerializer: paramsSerializer('params)=?,
    ~data: Js.t('data)=?,
    ~timeout: int=?,
    ~withCredentials: bool=?,
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
    ~socketPath: string=?,
    ~proxy: proxy=?,
    ~httpAgent: Axios_agent.Http.t=?,
    ~httpsAgent: Axios_agent.Https.t=?,
    unit
  ) =>
  config =
  "";

[@bs.obj]
external makeConfigWithUrl:
  (
    ~url: string,
    ~_method: string=?,
    ~baseURL: string=?,
    ~transformRequest: requestTransformer(
                         'postData,
                         Headers.t,
                         'resultPostData,
                       )
                         =?,
    ~transformResponse: responseTransformer('data, 'resultData)=?,
    ~headers: Headers.t=?,
    ~params: Js.t('params)=?,
    ~paramsSerializer: paramsSerializer('params)=?,
    ~data: Js.t('data)=?,
    ~timeout: int=?,
    ~withCredentials: bool=?,
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
    ~socketPath: string=?,
    ~proxy: proxy=?,
    ~httpAgent: Axios_agent.Http.t=?,
    ~httpsAgent: Axios_agent.Https.t=?,
    unit
  ) =>
  configWithUrl =
  "";

[@bs.module "axios"]
external all:
  array(Js.Promise.t(response(_, _))) =>
  Js.Promise.t(array(response(_, _))) =
  "";

[@bs.module "axios"]
external all2:
  (
    (Js.Promise.t(response('a0, 'b0)), Js.Promise.t(response('a1, 'b1)))
  ) =>
  Js.Promise.t((response('a0, 'b0), response('a1, 'b1))) =
  "all";

[@bs.module "axios"]
external all3:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
    )
  ) =>
  Js.Promise.t(
    (response('a0, 'b0), response('a1, 'b1), response('a2, 'b2)),
  ) =
  "all";

[@bs.module "axios"]
external all4:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
    ),
  ) =
  "all";

[@bs.module "axios"]
external all5:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
    ),
  ) =
  "all";

[@bs.module "axios"]
external all6:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
    ),
  ) =
  "all";

[@bs.module "axios"]
external all7:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
    ),
  ) =
  "all";

[@bs.module "axios"]
external all8:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
    ),
  ) =
  "all";

[@bs.module "axios"]
external all9:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
      Js.Promise.t(response('a8, 'b8)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
      response('a8, 'b8),
    ),
  ) =
  "all";

[@bs.module "axios"]
external all10:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
      Js.Promise.t(response('a8, 'b8)),
      Js.Promise.t(response('a9, 'b9)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
      response('a8, 'b8),
      response('a9, 'b9),
    ),
  ) =
  "all";

[@bs.module "axios"]
external request: configWithUrl => Js.Promise.t(response('a, 'b)) = "";

[@bs.module "axios"]
external get: string => Js.Promise.t(response('a, 'b)) = "";

[@bs.module "axios"]
external getc: (string, config) => Js.Promise.t(response('a, 'b)) = "get";

[@bs.module "axios"]
external delete: string => Js.Promise.t(response('a, 'b)) = "";

[@bs.module "axios"]
external deletec: (string, config) => Js.Promise.t(response('a, 'b)) =
  "delete";

[@bs.module "axios"]
external post: string => Js.Promise.t(response('a, 'b)) = "";

[@bs.module "axios"]
external postData: (string, Js.t('a)) => Js.Promise.t(response('b, 'c)) =
  "post";

[@bs.module "axios"]
external postDatac:
  (string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "post";

[@bs.module "axios"]
external put: string => Js.Promise.t(response('a, 'b)) = "";

[@bs.module "axios"]
external putData: (string, Js.t('a)) => Js.Promise.t(response('b, 'c)) =
  "put";

[@bs.module "axios"]
external putDatac:
  (string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "put";

[@bs.module "axios"]
external patch: string => Js.Promise.t(response('a, 'b)) = "";

[@bs.module "axios"]
external patchData: (string, Js.t('a)) => Js.Promise.t(response('b, 'c)) =
  "patch";

[@bs.module "axios"]
external patchDatac:
  (string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "patch";

module Instance = Axios_instance;
module Agent = Axios_agent;