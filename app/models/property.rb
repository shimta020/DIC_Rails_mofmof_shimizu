class Property < ApplicationRecord
  validates :name, presence: true, length: { maximum: 60 }
  validates :rent, presence: true, numericality: { only_integer: true }, length: { maximum: 10 }
  validates :address, presence: true, length: { maximum: 60 }
  validates :age, presence: true, numericality: { only_integer: true }, length: { maximum: 4 }
  validates :notes, presence: true, length: { maximum: 300 }
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
