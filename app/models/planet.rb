class Planet < ApplicationRecord
  belongs_to :planetary_system, optional: true
end
