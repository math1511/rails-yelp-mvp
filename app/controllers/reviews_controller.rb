class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]

  def show
  end

  def new
    @reviews = Review.new
  end

  def create
    @reviews = Review.new(review_params)

    if @review.save
      redirect_to @review, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content)
  end
end
