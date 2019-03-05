require "rails_helper"
include Warden::Test::Helpers
RSpec.describe "regions", :type => :request do

   shared_examples "render_templates" do

      it "renders a SLO county template" do
         get "/donations/san_luis_obispo_county"
         expect(response).to render_template(:san_luis_obispo_county)
      end

      it "renders a SB county template" do
         get "/donations/santa_barbara_county"
         expect(response).to render_template(:santa_barbara_county)
      end
   end

   context "non-signed in user" do
      it_behaves_like "render_templates"
   end

   context "signed in user" do
      let(:user) { create(:user) }
      before(:each) { login_as user }

      it_behaves_like "render_templates"
   end
end
