class Iss
  include ActiveModel::Model

  attr_accessor :date

  validates :date, presence: true
end