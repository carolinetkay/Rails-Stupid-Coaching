class AnswersController < ApplicationController
  def answer
    @question = params[:question]
    question_array = @question.split("")

    if question_array[-1] == '?'
        then @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
        then @answer = 'Great!'
    else
        @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
