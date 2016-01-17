class Subscriber < ActiveRecord::Base
  validates :email, presence: true, uniqueness: { message: 'has already been subscribed' }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, allow_blank: true
end
