class AddCibleToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :cible, :string
  end
end
