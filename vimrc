syntax on " Syntax highlighting
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set shiftwidth=4


nnoremap <F2> :buffer<CR>:buffer<Space>
nnoremap <F5> :buffers<CR>:buffer<Space>

map <C-f> :!sh -xc '~/workspace/kaizen/tmux-sessionizer'<Enter>
"map <F2> :!sh -xc '~/workspace/kaizen/tmux-sessionizer'<Enter>
""map <F3> :!sh -xc 'git commit -a -m "test"'.

