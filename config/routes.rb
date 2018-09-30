Rails.application.routes.draw do
  
  root "emojify_link#home"
  post "emojify_link/add"

end
