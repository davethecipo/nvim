set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/vundle/
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'jiangmiao/auto-pairs'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'iCyMind/NeoSolarized'

call vundle#end()

" non usare file swap
set noswapfile

" serve al tema neovim-solarized
"set termguicolors

" tema
colorscheme NeoSolarized

let g:neosolarized_contrast="high"
let g:neosolarized_visibility="high"

set background=dark

" terminale con 256 colori
set t_Co=256

" abilita la sintassi
syntax on
filetype plugin indent on

" Mostra il numero di riga
set number

" Mostra il testo VISUALE BLOCCO quando è attiva la modalità visuale
set showmode

" " On pressing tab, insert 4 spaces
set expandtab                       
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" Permette di tornare indietro di quattro spazi quando si preme backspace
set softtabstop=4

" Capita di sbagliare a premere F1 mentre volevo Esc
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" " jj è più comodo di Esc
inoremap jj <ESC>

" Comandi personalizzati per LaTeX
let g:Tex_Com_sum = "\\sum_{<++>}^{<++>}<++>"
let g:Tex_Com_prod = "\\prod_{<++>}^{<++>}<++>"
let g:Tex_Com_dsm = "$$ <++> $$ <++>"
let g:Tex_Com_inm = "\\( <++> \\) <++>"
let g:Tex_Com_minm = "\\\\( <++> \\\\) <++>"
let g:Tex_Com_avg = "\\avg{<++>} <++>"
let g:Tex_Com_pd = "\\pd{<++>}{<++>}<++>"
let g:Tex_Com_gv = "\\gv{<++>}<++>"
let g:Tex_Com_uv = "\\uv{<++>}<++>"
let g:Tex_Com_abs = "\\abs{<++>}<++>"
let g:Tex_Com_pdc = "\\pdc{<++>}{<++>}{<++>}<++>"
let g:Tex_Com_pdd = "\\pdd{<++>}{<++>}{<++>}<++>"
let g:Tex_Com_spd = "\\spd{<++>}{<++>}<++>"
let g:Tex_Com_grad = "\\grad{<++>}<++>"

" Ridefinisce l'ambiente img
let g:Tex_Env_img = "\\begin{figure}[ht]\<CR>\\centering\<CR>\\includegraphics[width=<++>cm]{<++>}\<CR>\\caption{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{figure}\<CR><++>""

" Formato predefinito della compilazione LaTeX
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_CompileRule_pdf = "latexmk -pdf"

" Disabilita undo persistente dopo l'uscita
set noundofile

set spell spelllang=it


function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

" opzioni di default per compilare codice C++
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"

" permetti il source dalla current working directory, con l'opzione di
" sicurezza per disabilitare cose cattive
set exrc
set secure

