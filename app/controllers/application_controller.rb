class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/sundae' do
    sundae = Sundae.all
    sundae.to_json
  end
  get '/sundae_ingredients/:id' do
    sundae = Sundae.find(params[:id])
    sundae_ingred = sundae.ingredient_array
    sundae_ingred.to_json
  end

end
