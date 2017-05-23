require 'rails_helper'

RSpec.describe Star, type: :model do
  describe 'Attributes' do
    it 'has a string attribute #name' do
      Star.create(name: 'Sun')
      expect(Star.last.name).to eq('Sun')
    end
  end
end
