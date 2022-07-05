require_relative './shake_sundae.rb'
class Shake < ActiveRecord::Base
    has_many :shake_reviews

    include Ingredient::InstanceMethods

end