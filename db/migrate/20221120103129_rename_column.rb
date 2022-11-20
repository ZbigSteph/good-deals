class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :partners, :libelle, :nom
    add_column :partners, :prenom, :string
    add_column :partners, :password, :string
  end
end
