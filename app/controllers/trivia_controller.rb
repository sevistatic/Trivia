class TriviaController < ApplicationController
  protect_from_forgery with: :exception
  def index
  end

  def submit
  #  print "------>#{params[:triviaQuestion]}\n"
    redirect_to trivia_high_scores_path
  end

  def high_scores
  end

  def questions
  end
end
