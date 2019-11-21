class ReviewsController < ApplicationController
  def create
    @tiger = Tiger.find(params[:tiger_id])
    @review = Review.new(review_params)
    @review.tiger = @tiger
    @review.user = current_user

    if @review.save
      redirect_to tiger_path(@tiger), notice: 'Review was created'
    else
      render 'tigers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :user, :rating, :tiger)
  end
end
