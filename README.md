# bs-axios
Bucklescript bindings for axios

# Installation
1. Install bs-axios
```
$ yarn install bs-axios
```
or
```
$ npm install ns-axios
```
2. Add "bs-axios" to "bs-dependencies" section of `bsconfig.json`

# Example
```
Js.Promise.(
  Axios.get "/user?ID=12345"
  |> then_ (fun resp => resolve (Js.log resp##data))
  |> catch (fun err => resolve (Js.log err))
)
```