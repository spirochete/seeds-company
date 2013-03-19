require 'spec_helper'

describe "PasswordResets" do
  it "emails customer when requesting password reset" do
    customer = FactoryGirl.build(:customer)
    visit '/customers/sign_in'
    click_link "Forgot your password?"
    fill_in "Email", :with => customer.email
    click_button "Send me reset password instructions"
  end
end

describe "ShowCart" do
  it "has shopping cart link" do
    visit root_path
    page.should have_selector('.cart')
  end
end
