# require 'twilio-ruby'

def send_message(message)
  account_sid = 'AC57d30f6f3e6ef74916066b9cd7bac481'
  auth_token = '226214696c13297f828dfa269879c6d8'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.messages.create(
    from: '+16467591817',
    to: '+17209512343',
    body: message
  )
end