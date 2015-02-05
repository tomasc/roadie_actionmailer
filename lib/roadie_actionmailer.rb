require "roadie_actionmailer/interceptor"
require "roadie_actionmailer/version"

ActionMailer::Base.register_interceptor(RoadieActionmailer::Interceptor)