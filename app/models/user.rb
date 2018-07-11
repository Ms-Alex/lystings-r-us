class User < ApplicationRecord
  has_secure_password

  has_many :listings, -> { where realtor: true }
  has_many :favorites #, -> { where realtor: false }
  has_many :favorite_listings, through: :favorites, source: :favorited, source_type: 'Listing'

  acts_as_messageable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

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

  def realtor_listings
    if self.realtor
      Listing.all.select do |listing|
        listing.user_id == self.id
      end
    end
  end

  def regular_favorites
    if !self.realtor
      Favorite.all.select do |favorite|
        favorite.user_id == self.id
      end
    end
  end

end
