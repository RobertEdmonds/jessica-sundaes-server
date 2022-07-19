class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Sundae
  get '/sundaes' do
    sundae = Sundae.all
    sundae.to_json
  end
  patch '/sundae/:id' do
    sundae = Sundae.find(params[:id])
    sundae.update(likes: params[:likes])
    sundae.to_json
  end
  # Sundae Reviews 
  get '/sundae/:id' do 
    sundae = Sundae.find(params[:id])
    reviews = sundae.sundae_reviews
    reviews.to_json
  end
  # Shake
  # add plural routes, remove ingred
  get '/shakes' do
    shake = Shake.all
    shake.to_json
  end
  patch '/shake/:id' do
    shake = Shake.find(params[:id])
    shake.update(likes: params[:likes])
    all_shake = Shake.all
    all_shake.to_json
  end
  # Shake Reviews
  # /shakes/:shake_id/shake_reviews
  # restful routs
  # 
  get '/shake/:id' do 
    shake = Shake.find(params[:id])
    reviews = shake.shake_reviews 
    reviews.to_json
  end
  patch '/shake_reviews/:id' do
    review = Shake_reviews.find(params[:id])
    review.update(likes: params[:likes] + 1)
    all_reviews = Shake_reviews.all
    all_reviews.to_json
  end


end
