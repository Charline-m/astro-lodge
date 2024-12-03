class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :star
  validates :start_date, :end_date, presence: true
end
