class DummyController < ApplicationController

require "uri"
require "net/http"
require 'json'







  def test
    text = { :text => 'Mike' }.to_json
    payload = JSON.parse(text)
    Net::HTTP.post_form(URI.parse('https://guarded-refuge-8536.herokuapp.com/meanscraper'), payload)
  end
end
