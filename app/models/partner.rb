class Partner < ApplicationRecord
  has_many :articles, dependent: :destroy
  # has_one_attached :logo

  def display_name
    "#{nom} #{prenom}"
  end
end
