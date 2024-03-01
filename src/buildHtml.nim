
import std/htmlgen
import std/strformat
import std/os

const
  Name = "litlighilit"
  Title = fmt"{Name}'s home"
  SelfIntrFn = "selfIntr.md"
const SrcDir = currentSourcePath().parentDir
const
  ScriptAdded* = script(
    `type`="module", 
    slurp(SrcDir/"md-block.js"))
  SelfIntr =  fmt"<md-block>{slurp(SrcDir / SelfIntrFn)}</md-block>"
  # using https://md-block.verou.me/md-blocks.js will make render too slow
let
  Head = head(
    meta(charset="utf-8"),
    title Title,
    ScriptAdded
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

