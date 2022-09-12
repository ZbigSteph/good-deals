class Partner < ApplicationRecord
  def display_name
    libelle.to_s
  end
end
