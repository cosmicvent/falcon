require 'spec_helper'

describe "Sessions" do
  describe "SignIn" do

    it "should redirect to sign_in page when user is not logged in" do
      visit root_path
      page.should have_content("You need to sign in or sign up before continuing.")
    end

    it "should render home page when login is successful" do
      @admin = Factory(:admin)
      @admin.confirm!
      visit new_user_session_path
      fill_in "Email", with: @admin.email
      fill_in "Password", with: 'please'
      click_button "Sign in"

      page.should have_content "Signed in successfully."
    end

  end
end
