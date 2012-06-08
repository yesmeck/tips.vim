function DisplayTip()
    ruby << EOF
    require 'net/http'
    require 'uri'

    begin
      content = Net::HTTP.get(URI.parse('http://vim-tips.org/tips/random'));
    rescue
      print "Can not get tip."
    end
    print "Tip: #{content}"
EOF
endfunction

autocmd VimEnter * :call DisplayTip()

command NextTip :call DisplayTip()
command Nt :call DisplayTip()
