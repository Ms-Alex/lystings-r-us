class Listing < ApplicationRecord
  belongs_to :realtor

  def address_s
    self.address_line_1 + ", " + self.address_line_2
  end
end
