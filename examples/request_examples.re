/* Simple request */
Js.Promise.(
  Axios.get("/user?ID=12345")
  |> then_((response) => resolve(Js.log(response##data)))
  |> catch((error) => resolve(Js.log(error)))
);

/* Post requests */
Js.Promise.(
  Axios.post("/user")
  |> then_((response) => resolve(Js.log(response##data)))
  |> catch((error) => resolve(Js.log(error)))
);

let user = {
  "username": "michel",
  "password": "12345678"
};

Js.Promise.(
  Axios.postData("/auth", {user})
  |> then_((response) => resolve(Js.log(response##data)))
  |> catch((error) => resolve(Js.log(error)))
);

/* Concurrency */
Js.Promise.(
  Axios.all2((Axios.get("/users/1"), Axios.get("/users/1/friends")))
  |> then_(((user, friends)) => resolve(Js.log2(user##data, friends##data)))
  |> catch((error) => resolve(Js.log(error)))
);
