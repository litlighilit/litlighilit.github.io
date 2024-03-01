
import std/htmlgen
const ScriptAdded* = script(
  `type`="module", 
  src="https://md-block.verou.me/md-block.js")
proc slurpMd*(fn: string): string{.compileTime.} = 
  
  "<md-block>" & slurp(fn) & "</md-block>"