Rails.application.routes.draw do
  get 'greetings/Questions'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "ask" => "questions#ask"
  get "answer" => "questions#answer"
  # get ask e o nome do da pagina nova que estamos criando, segundo nome do controler e 3 com # nome do metodo
end
