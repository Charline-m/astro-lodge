class Star < ApplicationRecord
  belongs_to :owner
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

end
