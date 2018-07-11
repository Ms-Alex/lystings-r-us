class ReviewsController < ApplicationController
  before_action :require_regular
  before_action :fetch_review, only: [:edit, :update]

  def new

    @listing = Listing.find(params[:listing_id])

    @user = current_user
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    @review.listing = @listing
    if @review.save
      @listing.reviews << @review
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to listing_path(@review.listing.id)
    else
      render :edit
    end
  end

  private

  def fetch_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :cleanlines, :communication, :value, :location)
  end

end
