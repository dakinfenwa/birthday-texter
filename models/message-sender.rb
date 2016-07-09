require 'twilio-ruby'

def send_message(message, to_phone)
  to_phone = ("+1" + to_phone.to_s)
  
  account_sid = 'AC57d30f6f3e6ef74916066b9cd7bac481'
  auth_token = '226214696c13297f828dfa269879c6d8'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new('ACed3ed813257f8acedfce46a695216257','cb1dd832eda91ea39319fe6827f1650b')

  @client.messages.create(
    from: '+14342605034',
    to: to_phone,
    body: message
  )
end

send_message("test",3305208411)