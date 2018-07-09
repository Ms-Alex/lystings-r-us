class ListingsController < ApplicationController
  before_action :fetch_listing, only: [:edit, :show, :update, :destroy]
  def index
    #code
    @listings = Listing.all
  end

  def new
    #code
    @listing = Listing.new
  end

  def create
    #code
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render :new
    end
  end

  def show
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy

  end

  private
  def fetch_listing
    #code
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:realtor_id, :address_line_1, :address_line_2, :city, :state, :zipcode, :price, :availability, :description)
  end

end
