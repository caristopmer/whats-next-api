class SmsController < ApplicationController

  def receive
    emote = Emote.create(emote: params[:Body])
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]

    Twilio.configure do |config|
    config.account_sid = account_sid
    config.auth_token = auth_token
    end

    @client = Twilio::REST::Client.new
    @client.api.account.messages.create(
      from: params[:To],
      to: params[:From],
      body: emote.retrieve_action.action
    )
  end

end
