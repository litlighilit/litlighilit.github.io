
import std/htmlgen
import std/strformat
import std/os
import ./handleMd
const
  Name = "litlighilit"
  Title = fmt"{Name}'s home"
  SelfIntrFn = "selfIntr.md"
  SelfIntr = slurpMd: currentSourcePath().parentDir / SelfIntrFn
let
  Head = head(
    meta(charset="utf-8"),
    title Title
  )
  Body = body(
    p(
      h1"Welcome",
      sup("to ",
        i Name, "'s",
        ins(" home")
      )
    ),
    p(SelfIntr)

  )
let Html* = html(
  Head,
  Body
)

