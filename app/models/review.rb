class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user, -> { where realtor: false }

  

end
