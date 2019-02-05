require 'spec_helper'

describe "UserPages" do
  subject {page}

  describe "Signup page" do
    before {visit signup_path}

    it {should have_content('Sign up')}
    it {should have_title(full_title('Sign up'))}
  end

  describe "profile page" do
    let(:user) { FactoryBot.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end


#   describe "GET /user_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get user_pages_index_path
#       response.status.should be(200)
#     end
#   end
end
