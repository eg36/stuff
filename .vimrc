" Basic config
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set ruler
highlight Comment ctermfg=red


" Plugins
call plug#begin()

Plug 'elixir-editors/vim-elixir'
Plug 'dense-analysis/ale'

call plug#end()

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls']


let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']

let g:ale_elixir_elixir_ls_release = expand("~/Development/elixir-ls/release")

let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:true}}

