class ReviewsController < ApplicationController
  before_action :set_company, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.company = @company
    @review.user = current_user
    if @review.save
      redirect_to company_path(@company)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to company_path(@review.company), status: :see_other
  end

  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
