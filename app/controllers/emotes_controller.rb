class EmotesController < ApplicationController
    require 'uri'

    def create
        emote = Emote.new(input: params[:emote])
        #emote.user = User.new
        emote.emotion = emote.retrieve_emotion
        emote.actions_array = emote.retrieve_actions
        emote.save
        render json: { action: emote.actions_array.pop }
    end
end
