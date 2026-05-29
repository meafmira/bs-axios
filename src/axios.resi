open Axios_types

module Headers: {
  type t

  let fromObj: {..} => t
  let fromDict: dict<string> => t
}

let makeResponseTransformer1: ('data => 'resultData) => responseTransformer<'data, 'resultData>
let makeResponseTransformer2: (
  'data => 'data0,
  'data0 => 'resultData,
) => responseTransformer<'data, 'resultData>
let makeResponseTransformer3: (
  'data => 'data0,
  'data0 => 'data1,
  'data1 => 'resultData,
) => responseTransformer<'data, 'resultData>
let makeResponseTransformer4: (
  'data => 'data0,
  'data0 => 'data1,
  'data1 => 'data2,
  'data2 => 'resultData,
) => responseTransformer<'data, 'resultData>
let makeResponseTransformer5: (
  'data => 'data0,
  'data0 => 'data1,
  'data1 => 'data2,
  'data2 => 'data3,
  'data3 => 'resultData,
) => responseTransformer<'data, 'resultData>

let makeRequestTransformer1: (('data, Headers.t) => 'resultData) => requestTransformer<
  'data,
  Headers.t,
  'resultData,
>
let makeRequestTransformer2: (
  ('data, Headers.t) => 'data0,
  ('data0, Headers.t) => 'resultData,
) => requestTransformer<'data, Headers.t, 'resultData>
let makeRequestTransformer3: (
  ('data, Headers.t) => 'data0,
  ('data0, Headers.t) => 'data1,
  ('data1, Headers.t) => 'resultData,
) => requestTransformer<'data, Headers.t, 'resultData>
let makeRequestTransformer4: (
  ('data, Headers.t) => 'data0,
  ('data0, Headers.t) => 'data1,
  ('data1, Headers.t) => 'data2,
  ('data2, Headers.t) => 'resultData,
) => requestTransformer<'data, Headers.t, 'resultData>
let makeRequestTransformer5: (
  ('data, Headers.t) => 'data0,
  ('data0, Headers.t) => 'data1,
  ('data1, Headers.t) => 'data2,
  ('data2, Headers.t) => 'data3,
  ('data3, Headers.t) => 'resultData,
) => requestTransformer<'data, Headers.t, 'resultData>

@obj
external makeConfig: (
  ~url: string=?,
  ~_method: string=?,
  ~baseURL: string=?,
  ~transformRequest: requestTransformer<'postData, Headers.t, 'resultPostData>=?,
  ~transformResponse: responseTransformer<'data, 'resultData>=?,
  ~headers: Headers.t=?,
  ~params: 'params=?,
  ~paramsSerializer: paramsSerializer<'params>=?,
  ~data: 'postData=?,
  ~timeout: int=?,
  ~withCredentials: bool=?,
  ~adapter: adapter<'a, 'b>=?,
  ~auth: auth=?,
  ~responseType: string=?,
  ~xsrfCookieName: string=?,
  ~xsrfHeaderName: string=?,
  ~onUploadProgress: onProgress<'uploadProgress>=?,
  ~onDownloadProgress: onProgress<'downloadProgress>=?,
  ~maxContentLength: int=?,
  ~maxBodyLength: int=?,
  ~validateStatus: validateStatus=?,
  ~maxRedirects: int=?,
  ~socketPath: string=?,
  ~proxy: proxy=?,
  ~httpAgent: Axios_agent.Http.t=?,
  ~httpsAgent: Axios_agent.Https.t=?,
  unit,
) => config = ""

@obj
external makeConfigWithUrl: (
  ~url: string,
  ~_method: string=?,
  ~baseURL: string=?,
  ~transformRequest: requestTransformer<'postData, Headers.t, 'resultPostData>=?,
  ~transformResponse: responseTransformer<'data, 'resultData>=?,
  ~headers: Headers.t=?,
  ~params: 'params=?,
  ~paramsSerializer: paramsSerializer<'params>=?,
  ~data: 'postData=?,
  ~timeout: int=?,
  ~withCredentials: bool=?,
  ~adapter: adapter<'a, 'b>=?,
  ~auth: auth=?,
  ~responseType: string=?,
  ~xsrfCookieName: string=?,
  ~xsrfHeaderName: string=?,
  ~onUploadProgress: onProgress<'uploadProgress>=?,
  ~onDownloadProgress: onProgress<'downloadProgress>=?,
  ~maxContentLength: int=?,
  ~maxBodyLength: int=?,
  ~validateStatus: validateStatus=?,
  ~maxRedirects: int=?,
  ~socketPath: string=?,
  ~proxy: proxy=?,
  ~httpAgent: Axios_agent.Http.t=?,
  ~httpsAgent: Axios_agent.Https.t=?,
  unit,
) => configWithUrl = ""

@module("axios")
external all: array<promise<response<_, _>>> => promise<array<response<_, _>>> = "all"
@module("axios")
external all2: ((promise<response<'a0, 'b0>>, promise<response<'a1, 'b1>>)) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
)> = "all"
@module("axios")
external all3: (
  (promise<response<'a0, 'b0>>, promise<response<'a1, 'b1>>, promise<response<'a2, 'b2>>)
) => promise<(response<'a0, 'b0>, response<'a1, 'b1>, response<'a2, 'b2>)> = "all"
@module("axios")
external all4: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
  )
) => promise<(response<'a0, 'b0>, response<'a1, 'b1>, response<'a2, 'b2>, response<'a3, 'b3>)> =
  "all"
@module("axios")
external all5: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
    promise<response<'a4, 'b4>>,
  )
) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
  response<'a2, 'b2>,
  response<'a3, 'b3>,
  response<'a4, 'b4>,
)> = "all"
@module("axios")
external all6: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
    promise<response<'a4, 'b4>>,
    promise<response<'a5, 'b5>>,
  )
) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
  response<'a2, 'b2>,
  response<'a3, 'b3>,
  response<'a4, 'b4>,
  response<'a5, 'b5>,
)> = "all"
@module("axios")
external all7: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
    promise<response<'a4, 'b4>>,
    promise<response<'a5, 'b5>>,
    promise<response<'a6, 'b6>>,
  )
) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
  response<'a2, 'b2>,
  response<'a3, 'b3>,
  response<'a4, 'b4>,
  response<'a5, 'b5>,
  response<'a6, 'b6>,
)> = "all"
@module("axios")
external all8: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
    promise<response<'a4, 'b4>>,
    promise<response<'a5, 'b5>>,
    promise<response<'a6, 'b6>>,
    promise<response<'a7, 'b7>>,
  )
) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
  response<'a2, 'b2>,
  response<'a3, 'b3>,
  response<'a4, 'b4>,
  response<'a5, 'b5>,
  response<'a6, 'b6>,
  response<'a7, 'b7>,
)> = "all"
@module("axios")
external all9: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
    promise<response<'a4, 'b4>>,
    promise<response<'a5, 'b5>>,
    promise<response<'a6, 'b6>>,
    promise<response<'a7, 'b7>>,
    promise<response<'a8, 'b8>>,
  )
) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
  response<'a2, 'b2>,
  response<'a3, 'b3>,
  response<'a4, 'b4>,
  response<'a5, 'b5>,
  response<'a6, 'b6>,
  response<'a7, 'b7>,
  response<'a8, 'b8>,
)> = "all"
@module("axios")
external all10: (
  (
    promise<response<'a0, 'b0>>,
    promise<response<'a1, 'b1>>,
    promise<response<'a2, 'b2>>,
    promise<response<'a3, 'b3>>,
    promise<response<'a4, 'b4>>,
    promise<response<'a5, 'b5>>,
    promise<response<'a6, 'b6>>,
    promise<response<'a7, 'b7>>,
    promise<response<'a8, 'b8>>,
    promise<response<'a9, 'b9>>,
  )
) => promise<(
  response<'a0, 'b0>,
  response<'a1, 'b1>,
  response<'a2, 'b2>,
  response<'a3, 'b3>,
  response<'a4, 'b4>,
  response<'a5, 'b5>,
  response<'a6, 'b6>,
  response<'a7, 'b7>,
  response<'a8, 'b8>,
  response<'a9, 'b9>,
)> = "all"

@module("axios") external request: configWithUrl => promise<response<'a, 'b>> = "default"
@module("axios") external get: string => promise<response<'a, 'b>> = "get"
@module("axios") external getc: (string, config) => promise<response<'a, 'b>> = "get"
@module("axios") external delete: string => promise<response<'a, 'b>> = "delete"
@module("axios") external deletec: (string, config) => promise<response<'a, 'b>> = "delete"
@module("axios") external post: string => promise<response<'a, 'b>> = "post"
@module("axios") external postData: (string, 'a) => promise<response<'b, 'c>> = "post"
@module("axios") external postDatac: (string, 'a, config) => promise<response<'b, 'c>> = "post"
@module("axios") external put: string => promise<response<'a, 'b>> = "put"
@module("axios") external putData: (string, 'a) => promise<response<'b, 'c>> = "put"
@module("axios") external putDatac: (string, 'a, config) => promise<response<'b, 'c>> = "put"
@module("axios") external patch: string => promise<response<'a, 'b>> = "patch"
@module("axios") external patchData: (string, 'a) => promise<response<'b, 'c>> = "patch"
@module("axios") external patchDatac: (string, 'a, config) => promise<response<'b, 'c>> = "patch"

module Instance = Axios_instance
module Agent = Axios_agent
