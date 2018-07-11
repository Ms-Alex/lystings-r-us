class ReviewsController < ApplicationController
  before_action :require_regular
  # before_action :fetch_review, only: [:edit, :update]

  def new
    @listing = Listing.find(params[:listing_id])
    @user = current_user
    @review = Review.new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.listing_id = @listing.id

    if @review.save
      @listing.reviews << @review
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  # def edit
  # end
  #
  # def update
  #   @review.update(review_params)
  #   if @review.save
  #     redirect_to listing_path(@review.listing_id)
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   #code
  #   @listing = Listing.find(params[:listing_id])
  #
  # end


  private

  # def fetch_review
  #   @review = Review.find(params[:id])
  # end

  def review_params
    params.require(:review).permit(:title, :content, :cleanlines, :communication, :value, :location)
  end

end
