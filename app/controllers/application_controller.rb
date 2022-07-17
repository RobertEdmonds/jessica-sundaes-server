class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Sundae
  get '/sundae' do
    sundae = Sundae.all
    sundae.to_json
  end
  get '/sundae_ingredients/:id' do
    sundae = Sundae.find(params[:id])
    sundae_ingred = sundae.ingredient_array
    sundae_ingred.to_json
  end
  patch '/sundae/:id' do
    sundae = Sundae.find(params[:id])
    sundae.update(likes: params[:likes] + 1)
    all_sundae = Sundae.all
    all_sundae.to_json
  end
  # Sundae Reviews 
  get '/sundae_reviews/:id' do 
    sundae = Sundae.find(params[:id])
    reviews = sundae.sundae_reviews.all 
    reviews.to_json
  end
  # Shake
  get '/shake' do
    shake = Shake.all
    shake.to_json
  end
  get '/shake_ingredients/:id' do
    shake = Shake.find(params[:id])
    shake_ingred = shake.ingredient_array
    shake_ingred.to_json
  end
  patch '/shake/:id' do
    shake = Shake.find(params[:id])
    shake.update(likes: params[:likes] + 1)
    all_shake = Shake.all
    all_shake.to_json
  end
  # Shake Reviews
  get '/shake_reviews/:id' do 
    shake = Shake.find(params[:id])
    reviews = shake.shake_reviews.all 
    reviews.to_json
  end



end
