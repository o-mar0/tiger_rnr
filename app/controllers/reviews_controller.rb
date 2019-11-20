class ReviewsController < ApplicationController
  def create
    @tiger = Tiger.find(params[:tiger_id])
    @review = Review.new(review_params)
    @review.tiger = @tiger

    if @review.save
    else
      render 'tigers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :author, :rating, :tiger)
  end
end
