class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.references :category, null: false, foreign_key: true
      t.string :label
      t.text :description
      t.integer :prix
      t.string :image_couverture
      t.string :autres_images

      t.timestamps
    end
  end
end
