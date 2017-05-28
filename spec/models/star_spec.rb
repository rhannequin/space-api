require 'rails_helper'

RSpec.describe Star, type: :model do
  before do
    Star.create(name: 'Sun', mass: 10)
  end

  describe 'Attributes' do
    it 'has a string attribute #name' do
      expect(Star.last.name).to eq('Sun')
    end

    it 'has an integer attribute #mass' do
      expect(Star.last.mass).to eq(10)
    end
  end
end
