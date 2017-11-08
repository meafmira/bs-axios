# bs-axios

Bucklescript bindings for axios

# Installation

1. Install bs-axios

```bash
$ yarn add bs-axios
```

or

```bash
$ npm install --save bs-axios
```

2. Add "bs-axios" to "bs-dependencies" section of `bsconfig.json`

# Examples

## Simple request

```reason
Js.Promise.(
  Axios.get("/user?ID=12345")
  |> then_((resp) => resolve(Js.log(resp##data)))
  |> catch((err) => resolve(Js.log(err)))
);
```

## Concurrency

```reason
Js.Promise.(
  Axios.all2((Axios.get("/users/1"), Axios.get("/users/1/friends")))
  |> then_(((user, friends)) => resolve(Js.log2(user##data, friends##data)))
  |> catch((err) => resolve(Js.log(err)))
);
```
