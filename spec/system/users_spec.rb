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
  describe 'Task削除' do
    context '正常系' do
      it 'Taskが削除されること' do
        visit project_tasks_path(project)
        click_link 'Destroy'
        page.driver.browser.switch_to.alert.accept
        expect(page).not_to have_content task.title
        expect(Task.count).to eq 0
        expect(current_path).to eq project_tasks_path(project)
      end
    end
  end
end
