require 'rails_helper'

describe(Expense, type: :model) do
let(:expense) {FactoryBot.create(:expense)}
describe 'Validates' do

  it 'with category' do
    relation = described_class.reflect_on_association(:category)
    expect(relation.macro).to eq :belongs_to
  end

  it 'with user' do
    relation = described_class.reflect_on_association(:user)
    expect(relation.macro).to eq :belongs_to
  end


  context 'with amount present' do
   it { expect(build(:expense)).to(be_valid) }
  end
  context 'with amount not present' do
   it { expect(build(:expense,amount: nil)).not_to(be_valid) }
  end
  end
end
