require "rails_helper"

RSpec.describe Region, type: :model do
   context 'Associations' do
      it 'has_many donations' do
         association = described_class.reflect_on_association(:donations).macro
         expect(association).to eq :has_many
      end
   end
end
