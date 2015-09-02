class DummyController < ApplicationController

  def test
    render layout: false
  end
end
