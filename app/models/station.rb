class Station < ApplicationRecord
  validates :on_foot, numericality: { only_integer: true }, length: { maximum: 3 }
  belongs_to :property
end