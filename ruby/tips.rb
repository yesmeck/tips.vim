require 'net/http'
require 'uri'

def display_tip
  uri = URI.parse('http://vim-tips.org/')
  http = Net::HTTP.new(uri.host, uri.port)
  http.read_timeout= 3
  response = http.get('/tips/random')
  case response
  when Net::HTTPSuccess
    print "Did you know? #{response.body}"
  else
    response.error!
  end
end

