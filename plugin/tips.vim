ruby << EOF
  # require Ruby files
  begin
    require 'tips'
  rescue LoadError
    load_path_modified = false
    ::VIM::evaluate('&runtimepath').to_s.split(',').each do |path|
      lib = "#{path}/ruby"
      if !$LOAD_PATH.include?(lib) and File.exist?(lib)
        $LOAD_PATH << lib
        load_path_modified = true
      end
    end
    retry if load_path_modified
  end
EOF

function! DisplayTip()
  ruby display_tip
endfunction

autocmd! VimEnter * :call DisplayTip()

command! NextTip :call DisplayTip()
command! Nt :call DisplayTip()
