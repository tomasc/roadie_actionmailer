require "roadie_actionmailer/version"

module RoadieActionmailer
  # Your code goes here...
end

ActionMailer::Base.register_interceptor(RoadieActionmailer::Interceptor)
