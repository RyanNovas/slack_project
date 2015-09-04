class DummyController < ApplicationController

require "uri"
require "net/http"
require 'json'
require 'rest-client'







  def test
    RestClient.post "https://hooks.slack.com/services/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", payload = {"text" => "test" }.to_json#, :content_type => :json, :accept => :json


  end
end
