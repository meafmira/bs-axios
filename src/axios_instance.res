open Axios_types

type t

@module("axios") external create: config => t = "create"

@send external request: (t, configWithUrl) => promise<response<'a, 'b>> = "request"
@send external get: (t, string) => promise<response<'a, 'b>> = "get"
@send external getc: (t, string, config) => promise<response<'a, 'b>> = "get"
@send external delete: (t, string) => promise<response<'a, 'b>> = "delete"
@send external deletec: (t, string, config) => promise<response<'a, 'b>> = "delete"
@send external post: (t, string) => promise<response<'a, 'b>> = "post"
@send external postData: (t, string, 'a) => promise<response<'b, 'c>> = "post"
@send external postDatac: (t, string, 'a, config) => promise<response<'b, 'c>> = "post"
@send external put: (t, string) => promise<response<'a, 'b>> = "put"
@send external putData: (t, string, 'a) => promise<response<'b, 'c>> = "put"
@send external putDatac: (t, string, 'a, config) => promise<response<'b, 'c>> = "put"
@send external patch: (t, string) => promise<response<'a, 'b>> = "patch"
@send external patchData: (t, string, 'a) => promise<response<'b, 'c>> = "patch"
@send external patchDatac: (t, string, 'a, config) => promise<response<'b, 'c>> = "patch"
