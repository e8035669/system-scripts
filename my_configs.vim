"let g:ale_enabled = 0
let g:ale_linters = {'python': ['pylint']}
"let g:ycm_global_ycm_extra_conf = '/home/jeff/ycm_global_ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript,rust': ['re!\w{2}'],
			\ }

let g:formatters_python = ['yapf']
let g:NERDTreeWinPos = "left"
set nofoldenable

"nnoremap <C-e> <C-w>
command WWW w !sudo tee % > /dev/null
command! W w
set nu

