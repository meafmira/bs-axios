# bs-axios [![npm version](https://img.shields.io/npm/v/bs-axios.svg?style=flat-square)](https://www.npmjs.com/package/bs-axios)

[Axios](https://github.com/axios/axios) bindings for ReScript.

## Installation

1. Install bs-axios and axios:

```bash
npm install --save bs-axios axios
```

2. Add `bs-axios` to the `dependencies` section of your `rescript.json`.

```json
{
  "dependencies": ["bs-axios"]
}
```

## Examples

See usage examples in the examples folder:

- [Request examples](./examples/request_examples.res) (GET, POST)
- [Instance example](./examples/instance_example.res)

### Simple request

```rescript
Axios.get("/user?ID=12345")
->Promise.then(response => Promise.resolve(Console.log(response["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
```

### Post requests

```rescript
Axios.post("/user")
->Promise.then(response => Promise.resolve(Console.log(response["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
```

```rescript
let user = {"username": "michel", "password": "12345678"}

Axios.postData("/auth", {"user": user})
->Promise.then(response => Promise.resolve(Console.log(response["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
```

### Concurrency

```rescript
Axios.all2((Axios.get("/users/1"), Axios.get("/users/1/friends")))
->Promise.then(((user, friends)) => Promise.resolve(Console.log2(user["data"], friends["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
```

### Creating an instance

You can create a new instance of axios with a custom config.

```rescript
open Axios

let inst = Instance.create(makeConfig(~baseURL="https://example.com", ()))
Instance.get(inst, "/")->Promise.then(resp => Promise.resolve(Console.log(resp["data"])))
```

### Error handling

```rescript
type axiosError = {"response": {"status": int}}
external promiseErrorToJsObj: exn => axiosError = "%identity"

Instance.get(inst, "/")
->Promise.then(resp => Promise.resolve(Ok(resp)))
->Promise.catch(error => {
  let error = error->promiseErrorToJsObj
  Console.log(error["response"]["status"])
  Promise.resolve(Error(error))
})
```

### Headers

```rescript
let headers = Axios.Headers.fromObj({"Content-type": "application/json"})
Axios.getc("https://example.com", Axios.makeConfig(~headers, ()))

let headersDict = {
  let dict = Dict.make()
  dict->Dict.set("Content-type", "application/json")
  dict
}
let headers = Axios.Headers.fromDict(headersDict)
Axios.getc("https://example.com", Axios.makeConfig(~headers, ()))
```

### Node.js HTTP/HTTPS Agent

Providing custom Node.js [`HTTP Agent`](https://nodejs.org/api/http.html#http_class_http_agent)
allows for configuring connection persistence and reuse. For secure connections,
[`HTTPS Agent`](https://nodejs.org/api/https.html#https_class_https_agent) allows security-related
configuration to be provided.

```rescript
let httpsAgent =
  Axios.Agent.Https.config(~rejectUnauthorized=false, ())->Axios.Agent.Https.create

Axios.getc("https://insecure-example.com", Axios.makeConfig(~httpsAgent, ()))
```
