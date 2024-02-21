class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    # question e a variavel que vou chamar depois na logica e no html e
    # params é função do rb e to colocando entre [] para pegar o valor de question question é uma key.
    if @question == 'I am going to work'
      @answer = "great"
    elsif @question[-1] == "?"
    # elsif @question.end_with?('?')
      @answer = "Silly question, get dressed and go to work!."
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end



 # Aqui você lê a pergunta enviada pelo usuário através dos parâmetros da requisição (params)
#  @question = params[:question]
#  # Agora, você deve implementar a lógica para gerar a resposta do "coach"
#  @answer = if @question.downcase == 'vou trabalhar'
#              'Ótimo!'
#            elsif @question.end_with?('?')
#              'Pergunta boba, se arrume e vá trabalhar!'
#            else
#              'Não me importo, se arrume e vá trabalhar!'
#            end
