
import std/htmlgen
const pre = script(`type`="module", src="https://md-block.verou.me/md-block.js")
proc slurpMd*(fn: string): string{.compileTime.} = 
  pre & 
    "<md-block>" & slurp(fn) & "</md-block>"