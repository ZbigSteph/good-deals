class CreateSousCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sous_categories do |t|
      t.string :titre
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
