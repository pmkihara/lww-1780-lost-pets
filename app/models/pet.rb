class Pet < ApplicationRecord
  SPECIES = %w[dog cat rabbit snake turtle bird].freeze
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.current - found_on).to_i
  end
end
