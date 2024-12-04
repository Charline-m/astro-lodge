class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :star
  validates :start_date, :end_date, presence: true

  def total_price
    return 0 unless start_date && end_date
    (end_date - start_date).to_i * star.price
  end
end
