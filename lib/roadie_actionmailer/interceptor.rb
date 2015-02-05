require 'roadie'

module RoadieActionmailer
  class Interceptor
    def self.delivering_email message
      message.body = Roadie::Document.new(message.body.to_s).transform
    end
  end
end
