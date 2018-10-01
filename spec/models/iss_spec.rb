require 'rails_helper'

RSpec.describe Iss, type: :model do
  let(:iss) { Iss.new(date: Time.zone.now) }

  describe 'Attributes' do
    it 'has a Time attribute #date' do
      expect(iss.date).to be_a(Time)
    end
  end

  describe 'Compulsory attributes' do
    it 'must have a non-nil #date attribute' do
      expect(Iss.new).not_to be_valid
    end
  end
end
