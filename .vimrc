set nomodeline
source /usr/share/vim/vimrc
runtime ftplugin/man.vim
syntax on
inoremap jk <ESC>
set number
set showmatch
set incsearch
set scrolloff=999
set clipboard=unnamed
set autochdir
set visualbell
set nocompatible
set mouse=a
colorscheme slate

"   Eliminate clutter files
    set nobackup
    set noswapfile

"	Disable Background Color Erace (BCE) so that color schemes
"	render properly when inside 256-color tmux and GNU screen.
	if &term =~ '256color'
		set t_ut=
	endif

"   keep folds when quitting vim
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview

"   Get git branch function
"   function! GitBranch()
"       return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"   endfunction
"
"   function! StatuslineGit()
"       let l:branchname = GitBranch()
"       return strlen(l:branchname) > 0?'   '.l:branchname.'  ':''
"   endfunction

"   Macros
    let @c = ':tabf ~/.vimrc'
	let @s = ':source ~/.vimrc'

"   Status line   
"   hi User1 ctermbg=blue ctermfg=black guibg=blue guifg=black
"   hi User2 ctermbg=yellow ctermfg=black guibg=yellow guifg=black
"   hi User3 ctermbg=black ctermfg=blue guibg=black guifg=blue
"   set laststatus=2
"   set statusline=
"   set statusline+=%1*\ %f\ 
"   set statusline+=%=
"   set statusline+=%2*\ \<%{StatuslineGit()}\>\ 
"   set statusline+=%3*\ %y
"   set statusline+=\ %p%%
"   set statusline+=\ %l:%c
"   set statusline+=%{ObsessionStatus()}

    call plug#begin()

    Plug 'wakatime/vim-wakatime'
    Plug 'tpope/vim-obsession'
    Plug 'pbondoer/vim-42header'
	Plug 'christoomey/vim-tmux-navigator'

    call plug#end()
