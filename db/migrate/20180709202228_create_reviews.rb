class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.string :noise_level
      t.integer :location
      t.integer :cleanlines
      t.integer :communication
      t.integer :value
      t.datetime :published_at

      t.timestamps
    end
  end
end
