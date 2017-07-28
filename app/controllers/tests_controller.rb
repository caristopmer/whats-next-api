class TestsController < ApplicationController
  require 'uri'



  def test
    render json: { howdy: "hello there!"}
  end

  def posty
    string = "I am super happy today. Yeah!"
    request_url = URI.encode("https://www.emoj.ai/api/classify?text=#{string}&token=#{ENV["EMOJ_ACCESS_TOKEN"]}")
    post = params[:content]
    response = HTTParty.get(request_url)

    render json: { response: response }
  end






end
