Isi::Application.routes.draw do
  get "slides/create"

  devise_for :admins
  
  root :to => "index#home"
  resources :projects, :only => [:index, :create, :show] do
    resources :slides, :only => [:create]
  end
  
  get "/design/criteria" => "design#criteria"
  get "/design/sizing" => "design#sizing"
  get "/design/site_questionnaire" => "design#site_questionnaire"
  get "/design/faq" => "design#faq"
  
  get "/technology/brushed_cylinder" => "technology#brushed_cylinder"
  get "/technology/brushed_cone" => "technology#brushed_cone"
  get "/technology/water_drive" => "technology#water_drive"
  
  get "/company/about" => "company#about"
  get "/company/clients" => "company#clients"
  get "/company/contact" => "company#contact"
end
