class EmotesController < ApplicationController
  require 'uri'

  def create
      emote = Emote.create(emote: params[:emote])
      render json: { action: emote.retrieve_action.action, emote_id: emote.id }
  end

  def show
    emote = Emote.find(params[:id])
    render json: { action: emote.retrieve_action.action, emote_id: emote.id }
  end
end
