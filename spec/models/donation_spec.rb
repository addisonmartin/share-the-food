require "rails_helper"

RSpec.describe Donation, type: :model do
   context 'Associations' do
      it 'belongs_to user' do
         association = described_class.reflect_on_association(:user).macro
         expect(association).to eq :belongs_to
      end

      it 'belongs_to region' do
         association = described_class.reflect_on_association(:region).macro
         expect(association).to eq :belongs_to
      end
   end

   context 'Sscopes' do
      it 'default_scope orders by descending created_at order' do
         first_donation = create(:donation)
         second_donation = create(:donation)
         expect(Donation.all).to eq [second_donation, first_donation]
      end
   end
end
