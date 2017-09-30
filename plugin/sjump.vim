" vim:set fileencoding=utf-8 sw=3 ts=8 et:vim
"
" Author: Marko Mahnič
" Created: October 2010
" License: GPL (http://www.gnu.org/copyleft/gpl.html)
" This program comes with ABSOLUTELY NO WARRANTY.

let g:loadedPlug = get(g:, 'loadedPlug', {})
if get(g:loadedPlug, 'sjump', 0)
   finish
endif
let g:loadedPlug.sjump = -1

let g:plug_sjump = get(g:, 'plug_sjump', {})
let g:plug_sjump.enable_keymap = get(g:plug_sjump, 'enable_keymap', 1)

if g:plug_sjump.enable_keymap
   nmap gl :call sjump#JumpToLabel()<cr>
endif

let g:loadedPlug.sjump = 1
