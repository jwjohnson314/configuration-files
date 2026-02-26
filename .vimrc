" =============================================================================
" vimrc
" =============================================================================

" --- Editor Basics -----------------------------------------------------------

set number
set tabstop=4
set shiftwidth=4 smarttab
set expandtab

" --- True Color & Colorscheme ------------------------------------------------
"
" Enable true color (24-bit) when the terminal supports it.
" tmux passes true color through when configured with terminal-overrides RGB/Tc.

if has('termguicolors')
  " These sequences are required when $TERM is not xterm-* inside tmux
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set t_Co=256
set background=dark
colorscheme desert

" --- Display -----------------------------------------------------------------

set laststatus=2        " always show status line
set ruler               " show cursor position in status line
set showcmd             " show partial commands in the last line
set scrolloff=4         " keep 4 lines visible above/below cursor
set sidescrolloff=8     " keep 8 cols visible left/right of cursor
set cursorline          " highlight the current line

" Give the cursor line a subtle underline rather than a heavy background
" so it reads well with the desert palette inside tmux
highlight CursorLine cterm=underline gui=underline ctermbg=NONE guibg=NONE

" --- Searching ---------------------------------------------------------------

set incsearch
set hlsearch
set ignorecase
set smartcase

" --- Behaviour ---------------------------------------------------------------

set backspace=indent,eol,start
set hidden              " allow unsaved buffers in background
set ttimeoutlen=50      " faster key-code timeout (helps in tmux)
set t_u7=               " disable cursor-position query; prevents terminal response arriving as R (replace mode)

" Clear search highlight with Escape
nnoremap <Esc> :nohlsearch<CR>
