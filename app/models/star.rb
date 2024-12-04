class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true


end
