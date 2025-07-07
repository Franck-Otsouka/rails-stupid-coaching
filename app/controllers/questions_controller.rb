class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question.downcase.include?('I am going to work')
      @answer = 'Great!'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I can't hear you!"
    end
  end
end
