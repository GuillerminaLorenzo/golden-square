require 'twilio-ruby'

class TwilioMessage
    def initialize(client)
        @client = client
    end
    attr_accessor :client

    def send_sms(from: '+15017122661', to:, body:)
        @client.messages.create(
        from: from,
        to:   to,
        body: body,
        )
    end
end