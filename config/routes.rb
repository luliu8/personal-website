Rails.application.routes.draw do
  get 'home/index'

  get 'projects/index'
  get 'projects/visual_recommender'
  get 'projects/visual_recommender_book_search'
  get 'projects/facial_composition'
  get 'projects/observing_dark_worlds'
  root 'home#index'
end
