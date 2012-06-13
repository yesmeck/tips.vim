ruby << EOF
    require File.join(File.dirname(__FILE__), '..', 'ruby/tips')
EOF

function DisplayTip()
  ruby display_tip
endfunction

autocmd VimEnter * :call DisplayTip()

command NextTip :call DisplayTip()
command Nt :call DisplayTip()
