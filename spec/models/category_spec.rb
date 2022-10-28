require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) {FactoryBot.create(:category)}
  describe 'Validates' do

    it 'with expenses' do
      relation = described_class.reflect_on_association(:expenses)
      expect(relation.macro).to eq :has_many
    end

    it 'with users' do
      relation = described_class.reflect_on_association(:users)
      expect(relation.macro).to eq :has_many
    end

    context 'with category present' do
    it { expect(build(:category)).to(be_valid) }
    end
    context 'with category not present' do
    it { expect(build(:category,category: nil)).not_to(be_valid) }
    end
  end
end
