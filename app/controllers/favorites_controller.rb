class FavoritesController < ApplicationController

  # def create
  #   add_to_favorite(params[:listing_id])
  #   @listing = Listing.find(params[:listing_id])
  #   flash[:listing] = "#{ @listing.address_s } was added to your favorites!"
  #   redirect_to user_path(current_user)
  # end

  def  create
    @favorite = @listing
    current_user.favorites << @favorite
    redirect_to user_path(current_user)
  end

end
