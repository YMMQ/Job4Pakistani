require 'test_helper'

class AdvertiseMailerTest < ActionMailer::TestCase
  test "adveritse_mail_sending" do
    mail = AdvertiseMailer.adveritse_mail_sending
    assert_equal "Adveritse mail sending", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
