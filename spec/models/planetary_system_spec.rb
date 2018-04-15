require 'rails_helper'

RSpec.describe PlanetarySystem, type: :model do
  before do
    PlanetarySystem.create(name: 'Solar System')
  end

  describe 'Attributes' do
    it 'has a string attribute #name' do
      expect(PlanetarySystem.last.name).to eq('Solar System')
    end
  end
end
