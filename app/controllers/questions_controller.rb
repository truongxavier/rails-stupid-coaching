class QuestionsController < ApplicationController
  @question = ''

  def ask
  end

  def answer
    @question = params[:question]
    fin_de_message = 'I am going to work right now!'
    if @question == fin_de_message || @question == fin_de_message.upcase
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
