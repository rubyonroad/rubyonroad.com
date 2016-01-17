class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.subscribed.subject
  #
  def subscribed(email)
    @greeting = "Hi"

    mail to: email
  end
end
