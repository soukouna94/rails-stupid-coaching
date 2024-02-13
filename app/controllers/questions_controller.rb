class QuestionsController < ApplicationController

  def ask
  end

  def answer

  @ask = params[:questions]
  @answer = get_coach_answer(@ask)
  end

  def get_coach_answer(ask)

    if ask == "I am going to work"
      return "Great!"
    elsif ask.end_with?('?')
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
