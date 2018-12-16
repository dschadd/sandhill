class TwilioControllerController < ApplicationController
  def text
    account_sid = 'ACc31e5c2f984833a157124fd7fd8a9b0a'
    auth_token = '0d212f0d0a1cce95cdc52c7891b433b9'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+18477449916' # Your Twilio number
    to = '+18478526762' # Your mobile phone number

    client.messages.create(
    from: from,
    to: to,
    body: "Hey friend!"
    )
  end
end
