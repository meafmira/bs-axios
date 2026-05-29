/* Simple request */
Axios.get("/user?ID=12345")
->Promise.then(response => Promise.resolve(Console.log(response["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
->ignore

/* Post requests */
Axios.post("/user")
->Promise.then(response => Promise.resolve(Console.log(response["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
->ignore

let user = {"username": "michel", "password": "12345678"}

Axios.postData("/auth", {"user": user})
->Promise.then(response => Promise.resolve(Console.log(response["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
->ignore

/* Concurrency */
Axios.all2((Axios.get("/users/1"), Axios.get("/users/1/friends")))
->Promise.then(((user, friends)) => Promise.resolve(Console.log2(user["data"], friends["data"])))
->Promise.catch(error => Promise.resolve(Console.log(error)))
->ignore

/* Headers */
let headers = Axios.Headers.fromObj({"Content-type": "application/json"})
Axios.getc("https://example.com", Axios.makeConfig(~headers, ()))->ignore

let headersDict = {
  let dict = Dict.make()
  dict->Dict.set("Content-type", "application/json")
  dict
}
let headers = Axios.Headers.fromDict(headersDict)
Axios.getc("https://example.com", Axios.makeConfig(~headers, ()))->ignore

/* Node.js Agent */
let httpsAgent = Axios.Agent.Https.config(~rejectUnauthorized=false, ())->Axios.Agent.Https.create

Axios.getc("https://insecure-example.com", Axios.makeConfig(~httpsAgent, ()))->ignore
