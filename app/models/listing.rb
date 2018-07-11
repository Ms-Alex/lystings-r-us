class Listing < ApplicationRecord
  belongs_to :user, -> { where realtor: true}
  has_many :reviews

  def address_s
    self.address_line_1 + ", " + self.address_line_2
  end

  
end
