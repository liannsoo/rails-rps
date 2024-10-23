Rails.application.routes.draw do
  root 'game#new'
  get '/rock', to: 'game#rock', as: 'rock'
  get '/paper', to: 'game#paper', as: 'paper'
  get '/scissors', to: 'game#scissors', as: 'scissors'
end
