autocmd VimEnter * :call DisplayTip()

function DisplayTip()
    ruby << EOF
    require 'net/http'
    require 'uri'

    content = Net::HTTP.get(URI.parse('http://0.0.0.0/tips/random'));
    print "Tip: #{content}"
EOF
endfunction

command NextTip :call DisplayTip()
command Nt :call DisplayTip()
