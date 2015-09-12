dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'httparty')
require 'pp'

# You can also use post, put, delete, head, options in the same fashion

options = {
  body: {
    q: "Cool hotels",
    apikey: "aaaaa"
  }
}

response = HTTParty.get('http://terminal2.expedia.com/x/nlp/results', options)
puts response.body, response.code, response.message, response.headers.inspect