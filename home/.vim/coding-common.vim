" Common settings for editing code

" Control if tabs stay tabs or convert to spaces
if exists('b:TabsOkay')
    exec "setlocal listchars=tab:\uA0\uA0,trail:\uB7,nbsp:~"
    setlocal noexpandtab
else
    exec "setlocal listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    setlocal expandtab
endif

" Control 4 or 8 space tabs
if exists('b:Tabs8')
    setlocal tabstop=8
    setlocal softtabstop=8
    setlocal shiftwidth=8
else
    setlocal tabstop=4
    setlocal softtabstop=4
    setlocal shiftwidth=4
endif

" Match and highlight overlength lines
highlight OverLength ctermfg=white ctermbg=darkgray guifg=white guibg=darkgrey
if exists('b:OverLength')
    execute 'match OverLength /\%' . b:OverLength . 'v.\+/'
else
    match OverLength /\%81v.\+/
endif

" Always use smart tabs
setlocal smarttab

" Round shifts to increments shiftwidth
setlocal shiftround

" Turn on relative line numbers
setlocal relativenumber

" Don't wrap automatically
setlocal nowrap
setlocal textwidth=0
setlocal formatoptions=cq
setlocal wrapmargin=0
