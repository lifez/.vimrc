
" chord files for vim-arpeggio

function! Chords#javascript()
  Arpeggio inoremap fun function
  Arpeggio inoremap FUN Function
  Arpeggio inoremap amd define(function(require) {<CR>})<Esc>O<Tab>
  Arpeggio inoremap des return function(desire) {<Cr>}<Esc>O<Tab>
  Arpeggio inoremap con console.log
  Arpeggio inoremap thi this
  Arpeggio inoremap ten .then
  Arpeggio inoremap req require('')<Left><Left>
  Arpeggio inoremap var var<Space>
  Arpeggio inoremap doc document.
  Arpeggio inoremap win window.
  Arpeggio inoremap pro .prototype.
  Arpeggio inoremap ary Array
  Arpeggio inoremap obj Object
  Arpeggio inoremap le .length
  Arpeggio inoremap arg arguments
  Arpeggio inoremap ;f ;(function() {<Cr>})()<Esc>O<Tab>
  Arpeggio inoremap rea fs.readFile
  Arpeggio inoremap jsp JSON.parse
  Arpeggio inoremap jst JSON.stringify
  Arpeggio inoremap bin .bind
  Arpeggio inoremap thr throw new Error()<left>
  Arpeggio inoremap mex module.exports
  Arpeggio imap pl <C-Y>,
  Arpeggio inoremap exo exports
endfunction

function! Chords#common()
  Arpeggio inoremap the the
  Arpeggio inoremap () ()<Left>
  Arpeggio inoremap {} {<CR>}<Esc>O<Tab>
  Arpeggio inoremap rs <C-w>
  Arpeggio inoremap ei <C-w>
  Arpeggio nnoremap rst ciw
  Arpeggio nnoremap nei ciw
  Arpeggio nnoremap stn ci'
  Arpeggio nnoremap tne ci"
  Arpeggio inoremap tru true
  Arpeggio inoremap fal false
  Arpeggio inoremap mat Math
  Arpeggio inoremap ret return<Space>
endfunction

function! Chords#smart_dot()
  if getline(".")[col(".") - 2] == "."
    return ""
  else
    return "."
  endif
endfunction

function! Chords#smart_space()
  if col(".") == 1 || getline(".")[col(".") - 2] == " "
    return ""
  else
    return " "
  endif
endfunction

function! Chords#ruby()
  Arpeggio inoremap end end
  Arpeggio inoremap ints ints
  Arpeggio inoremap uts puts<Space>
  Arpeggio inoremap xv, cases do<CR>end<Esc>O<Tab>
  Arpeggio inoremap xvm <C-R>=Chords#smart_dot()<CR>each
  Arpeggio inoremap xv. loop do<CR>end<Esc>O<Tab>
  Arpeggio inoremap xcm <C-R>=Chords#smart_dot()<CR>to_i
  Arpeggio inoremap xc, <C-R>=Chords#smart_dot()<CR>to_s
  Arpeggio inoremap xc. <C-R>=Chords#smart_dot()<CR>to_a
  Arpeggio inoremap map <C-R>=Chords#smart_dot()<CR>map {  }<Left><Left>
  Arpeggio inoremap mai <C-R>=Chords#smart_dot()<CR>map(&:to_i)
  Arpeggio inoremap sel <C-R>=Chords#smart_dot()<CR>select {  }<Left><Left>
  Arpeggio inoremap red <C-R>=Chords#smart_dot()<CR>reduce {  }<Left><Left>
  Arpeggio inoremap tim <C-R>=Chords#smart_dot()<CR>times
  Arpeggio inoremap sip <C-R>=Chords#smart_dot()<CR>strip
  Arpeggio inoremap ary <C-R>=Chords#smart_dot()<CR>array
  Arpeggio inoremap req require ''<Left>
  Arpeggio inoremap whi while<CR>end<Esc>kA<Space>
  Arpeggio inoremap def def<CR>end<Esc>kA<Space>
  " Arpeggio inoremap cla class
  Arpeggio inoremap doe <C-R>=Chords#smart_space()<CR>do<CR>end<Esc>O<Tab>
  Arpeggio inoremap ges gets
  Arpeggio inoremap els else
endfunction

function! Chords#setup()
  call Chords#common()
  call Chords#ruby()
  Arpeggio nnoremap ex ZZ
  Arpeggio nnoremap qu ZQ
endfunction

autocmd VimEnter * call Chords#setup()
let g:arpeggio_timeoutlen=30





