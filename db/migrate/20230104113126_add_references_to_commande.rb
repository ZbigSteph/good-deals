class AddReferencesToCommande < ActiveRecord::Migration[7.0]
  def change
    add_reference :commandes, :partner, null: false, foreign_key: true
    remove_column :commandes, :user_id
  end
end
