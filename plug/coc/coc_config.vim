"COC配置文件

let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'

let g:coc_global_extensions = [
  \ 'coc-tabnine',
  \ 'coc-diagnostic',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-git',
  \ 'coc-vimlsp',
  \ 'coc-highlight',
  \ 'coc-emmet',
  \ 'coc-spell-checker',
  \ 'coc-emoji',
  \ 'coc-lists',
  \ 'coc-gitignore',
  \ 'coc-actions',
  \ 'coc-db',
  \ 'coc-yank']
  vmap <A-m> <Plug>(coc-codeaction-selected)<CR>
  nmap <A-m> <Plug>(coc-codeaction-selected)<CR>
  augroup coc_event
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')

  "Use tab for trigger completion with characters ahead and navigate
  inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()

  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
