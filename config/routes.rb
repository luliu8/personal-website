Rails.application.routes.draw do
  get 'home/index'

  get 'projects/index'
  get 'projects/visual_recommender'

  root 'home#index'
end
