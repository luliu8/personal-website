Rails.application.routes.draw do
  get 'home/index'

  get 'projects/index'
  get 'projects/visual_recommender'
  get 'projects/visual_recommender_book_search'
  get 'projects/facial_composition'
  root 'home#index'
end
