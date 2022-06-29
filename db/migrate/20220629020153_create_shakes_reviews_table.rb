class CreateShakesReviewsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :shake_reviews do |t|
      t.string :name
      t.string :comment
      t.integer :shake_id
      t.integer :likes
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
