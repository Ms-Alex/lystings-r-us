class User < ApplicationRecord
  has_secure_password

  has_many :listings, -> { where realtor: true }
  has_many :favorites, -> { where realtor: false }

  acts_as_messageable

  def user_s
    self.first_name + " " + self.last_name
  end

  def realtor?
    self.realtor == true
  end

  def regular?
    self.realtor == false
  end

  def mailboxer_email(obj)
    nil
  end

end
