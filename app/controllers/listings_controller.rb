class ListingsController < ApplicationController
  before_action :require_user
  before_action :fetch_listing, only: [:edit, :show, :update, :destroy]
  before_action :require_realtor, only: [:new, :create, :edit, :update, :destroy]

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
    @listing.user = current_user
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

  end

  def update
    #code
    @listing.update(listing_params)
      if @listing.save
        redirect_to @listing
      else
        render :edit
      end   
  end

  def destroy

  end

  private
  def fetch_listing
    #code
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:address_line_1, :address_line_2, :city, :state, :zipcode, :price, :availability, :description)
  end

end
