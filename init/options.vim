" General Setting
set bs=2                " Allow backspacing over everything in insert mode
set history=50          " Keep 50 lines of command history
set incsearch           " Show search matches as you type
set smartcase           " Ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab            " Insert tabs on the start of a line according to context
set autoread            " Auto read when file is changed outside
set autowrite           " Auto :w before running commands
set splitbelow          " Horizontal split will appear below the old one for now
set splitright          " Vertical split will appear to the right of the old one for now
set mouse=a             " Use mouse every where
set report=0            " Always report things changed via vim commands
set scrolloff=5         " Scroll page if the cursor is 5 lines from the edge
set noequalalways       " Only adjacent windows will be resized if a splited window closed

" Indentation
set autoindent          " Set autoindenting on
set copyindent          " Copy the previous indentation on autoindenting
set expandtab           " Enable replacing tab with spaces
set tabstop=4           " Replace tab with 4 spaces
set shiftwidth=4        " Shift contents with 4 spaces by using >> or <<

" Files
set wildmenu            " Show possible matching of vim commands on status line
set wildmode=full       " Always pick the longest matching for completion
set wildignore=*.o      " A patterns for filtering files name with that pattern
set isk+=$              " Make '$' is not a word separator

" Visual Cues
set title               " Terminal title
set ruler               " Cursor position
set hlsearch            " Highligh search terms
set cursorline          " Current line effect
set showmatch           " Set show matching parenthesis
set showmode            " Display --insert--
set nu                  " Line num
set nowrap              " Don't wrap lines
set showtabline=2       " Always show tabline
set laststatus=2        " Always shows the status line

