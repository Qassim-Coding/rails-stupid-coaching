class QuestionsController < ApplicationController
  def ask
  end

  def answer
    #raise
    @question = params[:question]
    # dans params, je cherche questions
    # on stocke la réponse answer dans une VARIABLE d'INSTANCE, afin de pouvoir l'utiliser.
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?('?')
      # est-ce que ma @question se termine par '?'
      @answer = "Silly question, get dressed and go to work !"
    # if XXX =  I am going to work. le coach() répondra Great!
    # if YYY = XX? à la fin, le coach répondra () Silly question, get dressed and go to work !
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
    # raise
    # raise nous permet de causer un bug pour ouvrir l'outil de test. --> Accès à nos variables d'instance.
end
