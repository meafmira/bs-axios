# bs-axios
Bucklescript bindings for axios

# Installation
1. Install bs-axios
```
$ yarn install bs-axios
```
or
```
$ npm install bs-axios
```
2. Add "bs-axios" to "bs-dependencies" section of `bsconfig.json`

# Examples
## Simple request
```
Js.Promise.(
  Axios.get "/user?ID=12345"
  |> then_ (fun resp => resolve (Js.log resp##data))
  |> catch (fun err => resolve (Js.log err))
)
```

## Concurrency
```
Js.Promise.(
  Axios.all2 (Axios.get "/users/1", Axios.get "/users/1/friends")
  |> then_ (fun (user, friends) => resolve (Js.log2 user##data friends##data))
  |> catch (fun err => resolve (Js.log err))
)
```