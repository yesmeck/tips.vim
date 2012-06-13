require 'net/http'
require 'uri'

def display_tip
  require 'net/http'
  require 'uri'

  begin
    content = Net::HTTP.get(URI.parse('http://vim-tips.org/tips/random'));
  rescue
    print "Can not get tip."
  end
  print "Tip: #{content}"
end
