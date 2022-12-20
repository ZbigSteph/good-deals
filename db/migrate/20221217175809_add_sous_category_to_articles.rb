class AddSousCategoryToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :sous_category, null: false, foreign_key: true
    remove_reference(:articles, :category, index: true, foreign_key: true)
  end
end
