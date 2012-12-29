require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do

    before(:each) do
      visit '/auth/twitter'
    end

    it "login page should contain welcome text" do
      visit '/signout'
      page.should have_no_content("Sign Out")
      page.should have_content("Message Board")
      page.should have_content("Welcome to MessageBoard, please sign in with Twitter or Facebook to post messages")
    end
    
    it "Index page should contain Sign Out after logging in" do
      visit '/auth/twitter'
      page.should have_content("Sign Out")
    end
    
    it "New post page should contain fields for Title and Message" do
      visit new_post_path
      page.should have_content('Submit a Posting')
      page.should have_content('Title')
      page.should have_xpath("//input[@type='text']")
      page.should have_content('Message')
      page.should have_xpath("//textarea")
    end

    it "Show post page should contain Post's title and Post's message" do
      post = FactoryGirl.create(:post)
      visit post_path(post)
      page.should have_content('Some title')
      page.should have_content('Some message')
    end
    
    it "moves to show page when clicked on the title of a post" do
      visit '/signout'
      page.should have_no_content("Sign Out")
    end

  end
end
