require "rails_helper"
include Warden::Test::Helpers

RSpec.describe "new, :type" => :request do

   context 'non-signed in user' do
      it "redirects to root_path" do
         get "/donations/new"
         expect(response).to redirect_to(root_path)
      end
   end

   context "signed in user" do
      let(:user) { create(:user) }
      before(:each) { login_as user }

      it "renders a new donation template" do
         get "/donations/new"
         expect(response).to render_template(:new)
      end
   end
end
