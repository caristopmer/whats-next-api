class EmotesController < ApplicationController
  require 'uri'

  def create
    p params
    emote = Emote.create(emote: params[:emote], user: User.find_or_create_by(identifier: params[:uuid], identifier_type: "uuid"))
    render json: { action: emote.retrieve_action.action, emote_id: emote.id }
  end

  def show
    emote = Emote.find(params[:id])
    render json: { action: emote.retrieve_action.action, emote_id: emote.id }
  end
end
