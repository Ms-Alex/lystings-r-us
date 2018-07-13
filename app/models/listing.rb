class Listing < ApplicationRecord
  belongs_to :user, -> { where realtor: true}
  has_many :reviews
  has_many :favorites
  has_many_attached :images

  validates :address_line_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :availability, presence: true

  def address_s
    self.address_line_1 + ", " + self.address_line_2
  end

  def listing_avg_rating
    if ratings.count != 0
      (ratings.inject { |sum, rating| sum + rating } / ratings.length).to_f
    else
      nil
    end
  end

  private
  def ratings
    #code
    self.reviews.collect do |review|
      review.review_avg_rating
    end
  end

end
