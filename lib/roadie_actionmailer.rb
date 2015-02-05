require "roadie_actionmailer/version"

module RoadieActionmailer
  class CssInliner

    def self.delivering_email message
      message
    end

  end
end


ActionMailer::Base.register_interceptor(RoadieActionmailer::CssInliner)
