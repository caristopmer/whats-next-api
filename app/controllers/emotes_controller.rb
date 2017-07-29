class EmotesController < ApplicationController
    require 'uri'

    def create
        p "getting here"
        emote = Emote.new(input: params[:content])
        emote.recommendation = emote.retrieve_action
        emote.save
        p emote
        render json: { emote: emote }
    end
end
