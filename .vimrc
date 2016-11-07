"エンコーディング
"GUI版使ってるなら無効にした方がいいらしいです
set encoding=utf-8
scriptencoding utf-8

"カーソル位置表示
set ruler

"行数
set number

"色
set background=dark
"カラーテーマは入れたら有効にしてください
"let g:hybrid_use_iTerm_colors = 1
"colorscheme hybrid

"行番号の色や現在行の設定
autocmd ColorScheme * highlight LineNr ctermfg=12
highlight CursorLineNr ctermbg=4 ctermfg=0
"set cursorline
"hi clear CursorLine

"シンタックスハイライト
syntax enable

"オートインデント
set autoindent

"インデント幅
set shiftwidth=4
set softtabstop=4
set tabstop=4

"タブをスペースに変換
set expandtab
set smarttab

"長い行の折り返し表示
set wrap

"検索設定
"インクリメンタルサーチしない
set noincsearch
"ハイライト
set hlsearch
"大文字と小文字を区別しない
set ignorecase
"大文字と小文字が混在した検索のみ大文字と小文字を区別する
set smartcase
"最後尾になったら先頭に戻る
set wrapscan
"置換の時gオプションをデフォルトで有効にする
set gdefault


"不可視文字の設定
set list
set listchars=tab:>-,eol:↲,extends:»,precedes:«,nbsp:%

"コマンドラインモードのファイル補完設定
set wildmode=list:longest,full

"入力中のコマンドを表示
set showcmd

"クリップボードの共有
set clipboard=unnamed,autoselect

"カーソル移動で行をまたげるようにする
set whichwrap=b,s,h,l,<,>,~,[,]

"バックスペースを使いやすく
set backspace=indent,eol,start
set nrformats-=octal

"補完行数
set pumheight=10

"対応する括弧に一瞬移動
set showmatch
set matchtime=1

"ウィンドウの最後の行もできるだけ表示
set display=lastline

"変更中のファイルでも保存しないで他のファイルを表示する
set hidden

""""""""""""""""""""""""""""""


"カーソル移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
noremap <S-h> ^
noremap <S-j> }
noremap <S-k> {
noremap <S-l> $

"C-dでノーマルモード
inoremap <C-d> <esc>

"ノーマルモードのまま改行
nnoremap <CR> A<CR><ESC>
"ノーマルモードのままスペース
nnoremap <space> i<space><esc>

"rだけでリドゥ
nnoremap r <C-r>

"Yで行末までヤンク
nnoremap Y y$

"検索結果のハイライトをEsc連打でクリア
nnoremap <ESC><ESC> :nohlsearch<CR>


filetype plugin indent on
