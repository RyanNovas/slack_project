class DummyController < ApplicationController

require "uri"
require "net/http"
require 'json'
require 'rest-client'

skip_before_filter :verify_authenticy_token







  def test
    #binding.pry
    #RestClient.post "", payload = {"text" => "test" }.to_json
  end
end
