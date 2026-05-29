/* Creating an instance */
open Axios

let inst = Instance.create(makeConfig(~baseURL="https://example.com", ()))
Instance.get(inst, "/")
->Promise.then(resp => Promise.resolve(Console.log(resp["data"])))
->ignore
