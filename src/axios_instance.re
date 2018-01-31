open Axios_types;

type t;

[@bs.module "axios"] external create : config => t = "";

[@bs.send]
external all : (t, array(Js.Promise.t(response(_, _)))) => Js.Promise.t(array(response(_, _))) =
  "";

[@bs.send]
external all2 :
  (t, (Js.Promise.t(response('a0, 'b0)), Js.Promise.t(response('a1, 'b1)))) =>
  Js.Promise.t((response('a0, 'b0), response('a1, 'b1))) =
  "all";

[@bs.send]
external all3 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2))
    )
  ) =>
  Js.Promise.t((response('a0, 'b0), response('a1, 'b1), response('a2, 'b2))) =
  "all";

[@bs.send]
external all4 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3))
    )
  ) =>
  Js.Promise.t((response('a0, 'b0), response('a1, 'b1), response('a2, 'b2), response('a3, 'b3))) =
  "all";

[@bs.send]
external all5 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4))
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4)
    )
  ) =
  "all";

[@bs.send]
external all6 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5))
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5)
    )
  ) =
  "all";

[@bs.send]
external all7 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6))
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6)
    )
  ) =
  "all";

[@bs.send]
external all8 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7))
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7)
    )
  ) =
  "all";

[@bs.send]
external all9 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
      Js.Promise.t(response('a8, 'b8))
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
      response('a8, 'b8)
    )
  ) =
  "all";

[@bs.send]
external all10 :
  (
    (
      t,
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
      Js.Promise.t(response('a8, 'b8)),
      Js.Promise.t(response('a9, 'b9))
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
      response('a8, 'b8),
      response('a9, 'b9)
    )
  ) =
  "all";

[@bs.send] external request : t => Js.Promise.t(response('a, 'b)) = "";

[@bs.send] external get : (t, string) => Js.Promise.t(response('a, 'b)) = "";

[@bs.send] external getc : (t, string, config) => Js.Promise.t(response('a, 'b)) = "get";

[@bs.send] external delete : (t, string) => Js.Promise.t(response('a, 'b)) = "";

[@bs.send] external deletec : (t, string, config) => Js.Promise.t(response('a, 'b)) = "delete";

[@bs.send] external post : (t, string) => Js.Promise.t(response('a, 'b)) = "";

[@bs.send] external postData : (t, string, Js.t('a)) => Js.Promise.t(response('b, 'c)) = "post";

[@bs.send] external postDatac : (t, string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "post";

[@bs.send] external put : (t, string) => Js.Promise.t(response('a, 'b)) = "";

[@bs.send] external putData : (t, string, Js.t('a)) => Js.Promise.t(response('b, 'c)) = "put";

[@bs.send] external putDatac : (t, string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "put";

[@bs.send] external patch : (t, string) => Js.Promise.t(response('a, 'b)) = "";

[@bs.send] external patchData : (t, string, Js.t('a)) => Js.Promise.t(response('b, 'c)) = "patch";

[@bs.send] external patchDatac : (t, string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "patch";