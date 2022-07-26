class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Sundae
  get '/sundaes' do
    sundae = Sundae.all
    sundae.to_json(include: :sundae_reviews) 
  end
  patch '/sundae/:id' do
    sundae = Sundae.find(params[:id])
    sundae.update(likes: params[:likes])
    sundae.to_json
  end
  # Sundae Reviews 
  patch '/sundae_reviews/:id' do
    review = SundaeReview.find(params[:id])
    review.update(
      name: params[:name],
      comment: params[:comment],
      likes: params[:likes]
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
  delete '/sundae_reviews/:id' do
    review = SundaeReview.find(params[:id])
    review.destroy
    review.to_json
  end
  # Shake
  get '/shakes' do
    shake = Shake.all
    shake.to_json(include: :shake_reviews)
  end
  patch '/shakes/:id' do
    shake = Shake.find(params[:id])
    shake.update(likes: params[:likes])
    shake.to_json
  end
  # Shake Reviews
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
      comment: params[:comment],
      likes: params[:likes]
    )
    review.to_json
  end
  delete '/shake_reviews/:id' do
    review = ShakeReview.find(params[:id])
    review.destroy
    review.to_json
  end


end
