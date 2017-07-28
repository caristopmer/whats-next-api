class EmotesController < ApplicationController
    require 'uri'

    def create
        content_string = params[:content]
        request_url = URI.encode("https://www.emoj.ai/api/classify?text=#{content_string}&token=#{ENV["EMOJ_ACCESS_TOKEN"]}")
        response = HTTParty.get(request_url)

        render json: { response: response }
    end
end
