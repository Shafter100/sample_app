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

  let(:base_title){"Ruby on Rails Tutorial Sample App"}

  # pages = ["Home", "Help", "About", "Contact"]
  # pages.each { |name| page_test(name) }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contacts'" do
      visit contact_path
      expect(page).to have_content('Contacts')
    end

    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contacts")
    end
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
