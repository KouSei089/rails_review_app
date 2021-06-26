require 'rails_helper'

RSpec.describe "Users", type: :system do
  describe 'ログイン前' do
    it "アカウント登録" do
      visit sign_up_path
      fill_in 'Email', with: 'user_1@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'SignUp'
      expect(current_path).to eq login_path
      expect(page).to have_content 'User was successfully created.'
    end
  end
end
