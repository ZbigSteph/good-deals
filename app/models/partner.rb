class Partner < ApplicationRecord
  has_one_attached :logo
  def display_name
    nom.to_s + ' ' + prenom.to_s
  end
end
