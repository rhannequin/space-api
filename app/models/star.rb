class Star < ApplicationRecord
  belongs_to :planetary_system, optional: true

  def mass
    self[:mass].to_i
  end
end
