require "rails_helper"

RSpec.describe Notification, type: :mailer do
  describe "subscribed" do
    let(:mail) { Notification.subscribed }

    it "renders the headers" do
      expect(mail.subject).to eq("Subscribed")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
