class Listing < ApplicationRecord
  belongs_to :user, -> { where realtor: true}
  has_many :reviews
  has_many :favorites

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
    (ratings.inject { |sum, rating| sum + rating } / ratings.length).to_f
  end

  private
  def ratings
    #code
    self.reviews.collect do |review|
      review.review_avg_rating
    end
  end

end
