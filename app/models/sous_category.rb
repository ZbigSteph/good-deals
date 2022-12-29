class SousCategory < ApplicationRecord
  belongs_to :category
  has_many :articles

  def display_name
    titre.to_s
  end
end
