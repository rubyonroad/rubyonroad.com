# Preview all emails at http://localhost:3000/rails/mailers/notification
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification/subscribed
  def subscribed
    NotificationMailer.subscribed('email@example.com')
  end

end
