# As a User
# I want to login
# So that, I can read posts
feature "UserCanSignInAndSignOut" do
  subject(:user){ FactoryBot.create(:user) }

  # When I fill in email input with 'user@example.com'
  # And I fill in password input with 'password'
  # And I click button 'Login'
  # Then I see text 'Signed in successfully'
  scenario 'User enters valid credentials and sees welcome message' do
    visit '/'
    within('.new_user') do
      fill_in id: 'user_email', with: user.email
      fill_in id: 'user_password', with: user.password
    end
    click_button 'Sign in'
    expect(page).to have_content 'Signed in successfully'
  end

  # When I click on profile dropdown
  # And I click on button Logout
  # Then I see 'Sign in'
  scenario 'User signs out' do
    login_as(user, scope: :user)
    visit '/'
    find('#profileDropdown').click
    click_link 'Logout'
    expect(page).to have_content 'Log in'
  end
end
