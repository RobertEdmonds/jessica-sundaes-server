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
  patch '/sundae_reviews_likes/:id' do
    review = SundaeReview.find(params[:id])
    review.update(likes: params[:likes])
    review.to_json
  end
  patch '/sundae_reviews/:id' do
    review = SundaeReview.find(params[:id])
    review.update(
      name: params[:name],
      comment: params[:comment]
    )
    review.to_json
  end
  post '/sundae_reviews' do
    new_review = SundaeReview.create(
      name: params[:name],
      comment: params[:comment],
      sundae_id: params[:sundae_id],
      likes: 0
    )
    new_review.to_json
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
    shake.to_json
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
  patch '/shake_reviews_likes/:id' do
    review = ShakeReview.find(params[:id])
    review.update(likes: params[:likes])
    review.to_json
  end
  post '/shake_reviews' do
    new_review = ShakeReview.create(
      name: params[:name],
      comment: params[:comment],
      shake_id: params[:shake_id],
      likes: 0
    )
    new_review.to_json
  end
  patch '/shake_reviews/:id' do
    review = ShakeReview.find(params[:id])
    review.update(
      name: params[:name],
      comment: params[:comment]
    )
    review.to_json
  end


end
