class IssRequest
  include ActiveModel::Model

  attr_accessor :start_date, :latitude, :longitude, :elevation, :pressure, :horizon

  validates :start_date, :latitude, :longitude, presence: true

  validates :latitude, numericality: {
    greater_than_or_equal_to: -90,
    less_than_or_equal_to: 90 }

  validates :longitude, numericality: {
    greater_than_or_equal_to: -180,
    less_than_or_equal_to: 180 }

  validates :elevation, :pressure, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    allow_nil: true }

  validates :horizon, format: {
    with: /\A((?:[01]\d|2[0-3]):[0-5]\d\z)/,
    message: "must be format HH:MM",
    allow_nil: true }
end
