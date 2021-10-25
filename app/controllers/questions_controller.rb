# app/controller/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answers = ['Great', 'Silly question, get dressed and go to work!', 'I do not care, get dressed and go to work!']
    if params[:question] == "I am going to work"
      @answers = @answers[0]
    else
      if params[:question].ends_with?('?')
        @answers = @answers[1]
      else
        @answers = @answers[2]
      end
    end
  end
end
