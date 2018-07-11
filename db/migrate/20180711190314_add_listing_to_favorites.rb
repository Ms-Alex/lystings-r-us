class AddListingToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_reference :favorites, :listing, foreign_key: true
  end
end
