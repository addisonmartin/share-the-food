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

      it 'by_region scope gets donations from a particular region only' do
         region = create(:region)
         create(:donation, region_id: region.id)
         create_list(:donation, 10)
         donations = Donation.by_region(region.name)
         expect(donations.count).to eq 1
         expect(donations[0].region.name).to eq region.name
      end

      it 'by_city scope gets donations from a particular city only' do
         region = create(:region, city: "Morgantown")
         create(:donation, region_id: region.id)
         create_list(:donation, 10)
         donations = Donation.by_city(region.name, region.city)
         expect(donations.count).to eq 1
         expect(donations[0].region.city).to eq region.city
      end

      it 'search scope finds matching donations (by name and details) only' do
         donation = create(:donation, name: 'addison martin', details: 'cal poly')
         create_list(:donation, 10)
         expect(Donation.search('addison martin').count).to eq 1
         expect(Donation.search('addison martin')[0].id).to eq donation.id
         expect(Donation.search('cal poly').count).to eq 1
         expect(Donation.search('cal poly')[0].id).to eq donation.id

         expect(Donation.search('bob').count).to eq 0
         expect(Donation.search('james').count).to eq 0
      end
   end

   context "Validations" do
      let(:donation) { build(:donation) }

      it "creates successfully" do
         expect(donation).to be_valid
      end

      it "is not valid without a city" do
         donation.region_id = nil
         expect(donation).not_to be_valid
      end

      it "is not valid without a name" do
         donation.name = nil
         expect(donation).not_to be_valid
      end

      it "is not valid without details" do
         donation.details = nil
         expect(donation).not_to be_valid
      end

      it "is not valid without a user_id" do
         donation.user_id = nil
         expect(donation).not_to be_valid
      end
   end
end
