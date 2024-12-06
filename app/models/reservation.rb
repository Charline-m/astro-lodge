class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :star
  validates :start_date, :end_date, presence: true

  # STATUSES = %w[false true].freeze
  # validates :status, inclusion: { in: STATUSES }

  def total_price
    return 0 unless start_date && end_date
    (end_date - start_date).to_i * star.price
  end
end
