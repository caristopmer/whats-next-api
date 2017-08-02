class SmsController < ApplicationController

  def receive
    emote = Emote.create(
      emote: params[:Body],
      user: User.find_or_create_by(
        identifier: params[:From],
        identifier_type: "sms"
        )
      )
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
