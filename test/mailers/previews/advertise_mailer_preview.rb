# Preview all emails at http://localhost:3000/rails/mailers/advertise_mailer
class AdvertiseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/advertise_mailer/adveritse_mail_sending
  def adveritse_mail_sending
    AdvertiseMailer.adveritse_mail_sending
  end

end
