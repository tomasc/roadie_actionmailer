require 'roadie'

# for basic approach see here: https://github.com/fphilipe/premailer-rails/blob/master/lib/premailer/rails/hook.rb

module RoadieActionmailer
  class Interceptor

    def self.delivering_email message
      new(message).process
      message
    end

    # ---------------------------------------------------------------------
    
    attr_reader :document
    attr_reader :message

    def initialize message
      @message = message
      @document = Roadie::Document.new(@message)
    end

    def process
      # if the email is (i think) single part and is html
      #   process it directly
      # if it is multipart
      #   alter only the html part (or replace it with new one)
    end

  end
end
