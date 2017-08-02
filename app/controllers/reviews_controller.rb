class ReviewsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new
    
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)
    if @review.save
      redirect_to movie_path(@review.movie)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:description)
  end
end
