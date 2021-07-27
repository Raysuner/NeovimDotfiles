" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Add one dark theme
    Plug 'joshdick/onedark.vim'
    "Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Add ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    "Fzf search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    "Meet root
    Plug 'airblade/vim-rooter'
    "Rainbow parentheses
    Plug 'junegunn/rainbow_parentheses.vim'
    "Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    "Motion
    Plug 'justinmk/vim-sneak' 
    Plug 'mhinz/vim-startify'
    "Coc complete   
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Snippets
    Plug 'honza/vim-snippets'
    "Build and Run
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    "Commentary
    Plug 'tpope/vim-commentary'
    "Replace
    Plug 'ChristianChiarulli/far.vim'
    "Tabline
    Plug 'mg979/vim-xtabline'
call plug#end()
