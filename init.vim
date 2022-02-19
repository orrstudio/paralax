" Мой файл `~/.vimrc` или `~/.config/nvim/init.vim`
set background=dark " Темная Тема
set number " Нумерация строк
set autoindent " Автоматический отступ 
set expandtab " Табуляция заменяется пробeлом
set tabstop=4 
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a  " Включить мышь
set mousehide " Скрывать мышь при печати
set termencoding=utf-8
set fileencodings=utf8,cp1251
set ruler " Показать номер строки, позицию курсора
set noswapfile
set autochdir " Автоматически переходит в каталог открытого вами файла
set cursorline " Подсветка текущей строки
set scrolloff=7 " Минимальное количество строк экрана над и под курсором.
set autoindent " копирует отступы с текущей строки при добавлении новой.
set hlsearch " подсветка всех совпадений при поиске
set ignorecase " игнорирование регистра при поиске
set incsearch " отображение частичных совпадений при поиске
set clipboard=unnamedplus " Включение буфера обмена после установки xclip

syntax on " подсветка кода
"set tw=80 " автоперенос строки для 80 символов
"set colorcolumn=80 "  и вертикальную полосу для подсветки ширины в 80 символов
set t_Co=256 
set wrap linebreak nolist "Данная вариация работает как wrap но переносит строчки не посимвольно, а по словам
set nobackup
set completeopt-=preview
"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

filetype indent on      " загружать файлы отступов для конкретных типов файлов
syntax enable "Включает подсветку синтаксиса


call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/itchyny/lightline.vim' " плагин строки состояния
Plug 'https://github.com/preservim/NERDTree' " Плагин проводника дерева для vim.
Plug 'https://github.com/morhetz/gruvbox'  " colorscheme gruvbox
Plug 'https://github.com/alvan/vim-closetag' " Автоматически закрывать (X)HTML-теги
Plug 'https://github.com/preservim/tagbar' " Tagbar: средство просмотра структуры документа
Plug 'https://github.com/kien/ctrlp.vim' " Search files
Plug 'https://github.com/tpope/vim-commentary'  " Комментируйте вещи. Используйте gcc, чтобы закомментировать строку

let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

call plug#end()

inoremap jk <esc>

map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>

nmap <F8> :TagbarToggle<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

map ,v :vsp $MYVIMRC<CR>
map ,V :source $MYVIMRC<CR>

colorscheme gruvbox
