require 'spec_helper'

# def page_content(name)
#   case name
#   when "Home"
#     "Sample App"
#   when "Help"
#     "Help"
#   when "About"
#     "About Us"
#   when "Contact"
#     "Contacts"
#   end
# end
#
# def page_test(name)
#   describe "#{name} page" do
#
#     it "should have the content #{page_content(name)}" do
#       visit "/static_pages/#{name.downcase}"
#       expect(page).to have_content(page_content(name))
#     end
#
#     it "should have the right title" do
#       visit "/static_pages/#{name.downcase}"
#       expect(page).to have_title("#{base_title} | #{name}")
#     end
#   end
# end

describe "StaticPages" do
  subject {page}

  # pages = ["Home", "Help", "About", "Contact"]
  # pages.each { |name| page_test(name) }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before {visit root_path}

    let(:heading){'Sample App'}
    let(:page_title){''}

    it_should_behave_like "all static pages"
    it {should_not have_title('| Home')}
  end

  describe "Help page" do
    before {visit help_path}
    let(:heading){'Help'}
    let(:page_title){'Help'}

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before {visit about_path}
    let(:heading){'About Us'}
    let(:page_title){'About'}

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before {visit contact_path}
    let(:heading){'Contacts'}
    let(:page_title){'Contacts'}

    it_should_behave_like "all static pages"
  end

  # default tests
  # describe "GET /static_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get static_pages_index_path
  #     response.status.should be(200)
  #   end
  # end
end
