require_relative './shake_sundae.rb'
class Sundae < ActiveRecord::Base
    has_many :sundae_reviews

    include Ingredient::InstanceMethods

    # def ingredient_array
    #     # base = []
    #     # self.all.each do |sundae|
    #     #     ingredient = sundae.ingredients
    #     #     array = ingredient.split(',')
    #     #     base << array
    #     # end
    #     # base
    #     ingredient = self.ingredients
    #     ingredient.split(',')
    # end

end