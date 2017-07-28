class TestsController < ApplicationController
  def test
    render json: { howdy: "hello there!"}
  end

  def posty
    post = params[:content]
    render json: { hello: post }
  end
end
