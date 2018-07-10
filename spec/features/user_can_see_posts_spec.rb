# As a User
# I want to login
# So that, I can read posts
feature "UserCanSeePosts" do
  # When I fill in email input with 'user@example.com'
  # And I fill in password input with 'password'
  # And I click button 'Login'
  # Then I see text 'Welcome to Company News Portal!'
  scenario 'User enters valid credentials to get access' do
    visit '/'
    within('.new_user') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Hello, User'
  end
end
