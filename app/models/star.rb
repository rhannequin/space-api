class Star < ApplicationRecord
  def mass
    self[:mass].to_i
  end
end
