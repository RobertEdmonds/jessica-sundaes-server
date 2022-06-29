class CreateSundaesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :sundaes do |t|
      t.string :name
      t.integer :calories
      t.string :ingredients
      t.integer :likes
      t.string :image_url
      t.integer :cost
    end
  end
end
