require 'rails_helper'

describe(User, type: :model) do


  let(:user) { FactoryBot.create(:user) }

  describe 'validate associations' do
    it 'with expenses' do
      relation = described_class.reflect_on_association(:expenses)
      expect(relation.macro).to eq :has_many
    end

    it 'with category through expenses' do
      relation = described_class.reflect_on_association(:category)
      expect(relation.options.first).to eq %i[through expenses]
    end
  end




  context 'when first name is present' do
    it { expect(build(:user)).to(be_valid) }
  end
  context 'when first name is not present' do
    it { expect(build(:user, first_name: nil)).not_to(be_valid) }
  end
  context 'when last name is present' do
    it { expect(build(:user)).to(be_valid) }
  end
  context 'when last name is not present' do
    it { expect(build(:user, last_name: nil)).not_to(be_valid) }
  end
  context 'when username is present' do
    it { expect(build(:user)).to(be_valid) }
  end
  context 'when username is not present' do
    it { expect(build(:user, username: nil)).not_to(be_valid) }
  end

  end
