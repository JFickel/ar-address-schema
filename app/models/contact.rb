require_relative '../../db/config'

# implement your Contact model here
class Contact < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email_address, presence: true, format: { with: VALID_EMAIL_REGEX }
  VALID_PHONE_REGEX = /\A\d{3}-\d{3}-\d{4}/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }
  validates :company, presence: true


  def name
    self.first_name
  end

  def area_code
    self.phone_number.first(3)
  end
end
