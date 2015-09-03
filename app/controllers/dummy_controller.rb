class DummyController < ApplicationController

require "uri"
require "net/http"
require 'json'
require 'rest-client'







  def test
    RestClient.post "https://hooks.slack.com/services/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", payload = {"text" => "test" }.to_json, :content_type => :json, :accept => :json
    #payload = 'payload= > {"channel" => "#general", "username" => "webhookbot", "text" => "This is posted to #general and comes from a bot named webhookbot.", "icon_emoji" => ":ghost:"}'.to_json
    #Net::HTTP.post_form('https://hooks.slack.com/services/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'), payload)
  end
end
