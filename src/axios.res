open Axios_types

module Headers = {
  type t

  external fromObj: {..} => t = "%identity"
  external fromDict: dict<string> => t = "%identity"
}

external makeResponseTransformer1_: array<'data => 'resultData> => responseTransformer<
  'data,
  'resultData,
> = "%identity"

let makeResponseTransformer1 = f => makeResponseTransformer1_([f])

external makeResponseTransformer2_: (
  ('data => 'data0, 'data0 => 'resultData)
) => responseTransformer<'data, 'resultData> = "%identity"

let makeResponseTransformer2 = (f0, f1) => makeResponseTransformer2_((f0, f1))

external makeResponseTransformer3_: (
  ('data => 'data0, 'data0 => 'data1, 'data1 => 'resultData)
) => responseTransformer<'data, 'resultData> = "%identity"

let makeResponseTransformer3 = (f0, f1, f2) => makeResponseTransformer3_((f0, f1, f2))

external makeResponseTransformer4_: (
  ('data => 'data0, 'data0 => 'data1, 'data1 => 'data2, 'data2 => 'resultData)
) => responseTransformer<'data, 'resultData> = "%identity"

let makeResponseTransformer4 = (f0, f1, f2, f3) => makeResponseTransformer4_((f0, f1, f2, f3))

external makeResponseTransformer5_: (
  ('data => 'data0, 'data0 => 'data1, 'data1 => 'data2, 'data2 => 'data3, 'data3 => 'resultData)
) => responseTransformer<'data, 'resultData> = "%identity"

let makeResponseTransformer5 = (f0, f1, f2, f3, f4) =>
  makeResponseTransformer5_((f0, f1, f2, f3, f4))

external makeRequestTransformer1_: array<('data, Headers.t) => 'resultData> => requestTransformer<
  'data,
  Headers.t,
  'resultData,
> = "%identity"

let makeRequestTransformer1 = f => makeRequestTransformer1_([f])

external makeRequestTransformer2_: (
  (('data, Headers.t) => 'data0, ('data0, Headers.t) => 'resultData)
) => requestTransformer<'data, Headers.t, 'resultData> = "%identity"

let makeRequestTransformer2 = (f0, f1) => makeRequestTransformer2_((f0, f1))

external makeRequestTransformer3_: (
  (('data, Headers.t) => 'data0, ('data0, Headers.t) => 'data1, ('data1, Headers.t) => 'resultData)
) => requestTransformer<'data, Headers.t, 'resultData> = "%identity"

let makeRequestTransformer3 = (f0, f1, f2) => makeRequestTransformer3_((f0, f1, f2))

external makeRequestTransformer4_: (
  (
    ('data, Headers.t) => 'data0,
    ('data0, Headers.t) => 'data1,
    ('data1, Headers.t) => 'data2,
    ('data2, Headers.t) => 'resultData,
  )
) => requestTransformer<'data, Headers.t, 'resultData> = "%identity"

let makeRequestTransformer4 = (f0, f1, f2, f3) => makeRequestTransformer4_((f0, f1, f2, f3))

external makeRequestTransformer5_: (
  (
    ('data, Headers.t) => 'data0,
    ('data0, Headers.t) => 'data1,
    ('data1, Headers.t) => 'data2,
    ('data2, Headers.t) => 'data3,
    ('data3, Headers.t) => 'resultData,
  )
) => requestTransformer<'data, Headers.t, 'resultData> = "%identity"

let makeRequestTransformer5 = (f0, f1, f2, f3, f4) => makeRequestTransformer5_((f0, f1, f2, f3, f4))

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
