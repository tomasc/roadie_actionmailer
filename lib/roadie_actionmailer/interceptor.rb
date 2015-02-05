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
      # TODO: add options, see https://github.com/Mange/roadie-rails/blob/master/lib/roadie/rails/options.rb 
      # (basically we only need the URL options so we can transform to absolute paths)
      # @document.url_options = …
      # 
      # TODO: init asset providers (if asset pipeline exists, then use AssetPipelineProvider, otherwise FileSystemProvider)
      # @document.asset_providers = …
    end

    def process
      # if the email is (i think) single part and is html
      #   process it directly
      # if it is multipart
      #   alter only the html part (or replace it with new one)
      # 
      # improve_body if email.content_type =~ /^text\/html/
      # improve_html_part(email.html_part) if email.html_part
    end

  end
end
