class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user, -> { where realtor: false }

  validates :title, presence: true
  validates :content, presence: true

  validates :cleanlines, presence: true, inclusion: {in: 1..5}
  validates :communication, presence: true, inclusion: {in: 1..5}
  validates :value, presence: true, inclusion: {in: 1..5}
  validates :location, presence: true, inclusion: {in: 1..5}

  def review_avg_rating
    sum = (self.cleanlines + self.value + self.communication + self.location)
    sum / 4.0
  end

end
