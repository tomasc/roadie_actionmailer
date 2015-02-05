require 'test_helper'

module RoadieActionmailer
  describe Interceptor do

    let(:fixtures_path) { File.expand_path "../fixtures", __FILE__ }
    let(:html_header_styles) { IO.readlines(File.join(fixtures_path, 'header_styles.html')) }
    let(:html_linked_styles) { IO.readlines(File.join(fixtures_path, 'linked_styles.html')) }

    before(:each) do
      ActionMailer::Base.delivery_method = :test
      ActionMailer::Base.perform_deliveries = true
      ActionMailer::Base.default_options = { from: 'foo@bar.biz', to: 'bar@foo.biz', subject: 'Foo? Bar!', content_type: 'text/html' }
      ActionMailer::Base.deliveries.clear
    end

    after(:each) do
      ActionMailer::Base.deliveries.clear
    end

    describe '#delivering_email' do
      it 'should inline header stylesheets' do
        mail = ActionMailer::Base.mail(body: html_header_styles).deliver_now
        ActionMailer::Base.deliveries.last.body.to_s.must_match 'foooo'
      end

      it 'should inline linked stylesheets' do
        mail = ActionMailer::Base.mail(body: html_linked_styles).deliver_now
        ActionMailer::Base.deliveries.last.body.to_s.must_match "foooo"
      end
    end

  end
end