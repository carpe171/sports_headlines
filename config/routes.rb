EspnDb::Application.routes.draw do


  root to: 'si_headlines#index'
  resources :ncaa_mens_fb_headlines
  resources :ncaa_mens_bb_headlines
  resources :nhl_headlines
  resources :nfl_headlines
  resources :nba_headlines
  resources :headlines
  resources :mlb_headlines
  resources :si_headlines

  get 'about', to: 'static_pages#about'
  get 'contact', to: 'contact_forms#new', as: 'contact_forms'
  post 'contact', to: 'contact_forms#create'

  get 'announcements/:id/hide', to: 'announcements#hide', as: 'hide_announcement', via: [:get, :post]
end