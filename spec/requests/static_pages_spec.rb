require 'spec_helper'

describe "StaticPages" do
  subject {page}

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


  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contacts'))
    click_link "Home"
    expect(page).to have_title(full_title(''))
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
    click_link "Sign in"
    expect(page).to have_title(full_title('Sign in'))
  end

  describe "for signed-in users" do
    let(:user) { FactoryBot.create(:user) }
    before do
      FactoryBot.create(:micropost, user: user, content: "Lorem ipsum")
      FactoryBot.create(:micropost, user: user, content: "Dolor sit amet")
      sign_in user
      visit root_path
    end

    it "should have micropost counts on the sidebar" do
      expect(page).to have_content("#{user.microposts.count} " + "micropost".pluralize(user.microposts.count))
    end

    it "should render the user's feed" do
      user.feed.each do |item|
        expect(page).to have_selector("li##{item.id}", text: item.content)
      end
    end

    describe "microposts pagination" do
      before(:all) { 31.times { FactoryBot.create(:micropost, user: user, content: "Lorem ipsum") } }
      after(:all) { Micropost.delete_all }

      it { should have_selector('div.pagination') }

      it { should_not have_selector("li##{Micropost.last.id}") }
    end
  end

end
