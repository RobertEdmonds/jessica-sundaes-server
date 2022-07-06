module Ingredient
    module InstanceMethods
        def ingredient_array
            # base = []
            # self.all.each do |sundae|
            #     ingredient = sundae.ingredients
            #     array = ingredient.split(',')
            #     base << array
            # end
            # base
            ingredient = self.ingredients
            ingredient.split(',')
        end
        # def likes
        #     like = self.likes
        #     like
        # end
    end
end