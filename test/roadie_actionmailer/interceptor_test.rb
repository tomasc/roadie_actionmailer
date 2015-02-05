require 'test_helper'

module RoadieActionmailer
  describe Interceptor do

    before(:each) do
      ActionMailer::Base.delivery_method = :test
      ActionMailer::Base.perform_deliveries = true
      ActionMailer::Base.deliveries.clear
    end

    after(:each) do
      ActionMailer::Base.deliveries.clear
    end

    describe '#delivering_email' do
      it 'should inline html' do
        ActionMailer::Base.deliver do
          to 'receiver@example.com'
          from 'sender@example.com'
          subject 'Mail test'
          content_type 'text/html'
          body read_fixture('mail')
        end

        ActionMailer::Base.deliveries.first.body.to_s.must_match "foo"
      end
    end

  end
end