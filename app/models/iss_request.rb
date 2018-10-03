class IssRequest
  include ActiveModel::Model

  attr_accessor :start_date, :latitude, :longitude, :elevation

  validates :start_date, :latitude, :longitude, presence: true
  validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates :elevation, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
end
