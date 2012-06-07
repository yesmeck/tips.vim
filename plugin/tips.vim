function DisplayTip()
    ruby << EOF
    require 'net/http'
    require 'uri'

    content = Net::HTTP.get(URI.parse('http://vim-tips.org/tips/random'));
    print "Tip: #{content}"
EOF
endfunction

autocmd VimEnter * :call DisplayTip()

command NextTip :call DisplayTip()
command Nt :call DisplayTip()
