class Realtor < ApplicationRecord
  has_many :listings

  def realtor_s
    self.first_name + " " + self.last_name
  end
end
