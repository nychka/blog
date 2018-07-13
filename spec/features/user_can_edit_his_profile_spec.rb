# As a User
# I want to edit my profile
# So that, I can change my email or name
feature "UserCanEditHisProfile" do
  subject(:user){ FactoryBot.create(:user, first_name: 'Sam') }

  # When I click on link 'profileDropdown'
  # And I click on link 'Profile'
  # Then I go to profile page
  scenario 'User clicks link profile on nav-panel and goes to profile page' do
    login_as(user, scope: :user)
    visit '/'
    find('#profileDropdown').click
    click_link 'Profile'

    expect(page).to have_selector 'h1', text: "#{user.first_name}'s Profile"
  end

  # When I go to profile
  # And I click on button 'Edit'
  # Then I see button 'Save'
  scenario 'User clicks edit button on profile page and sees save button' do
    login_as(user, scope: :user)
    visit '/profile'
    click_link 'Edit'

    expect(page).to have_button 'Save'
  end

  # When I go to profile
  # And I click on button 'Edit'
  # And I change first name as 'Frodo'
  # And I click button 'Save'
  # Then I see Sam's profile
  scenario 'User clicks edit button on profile page and sees save button' do
    login_as(user, scope: :user)
    visit '/profile'
    click_link 'Edit'
    find('#user_first_name').set('Frodo')
    click_button 'Save'

    expect(page).to have_selector 'h1', text: "Frodo's Profile"
  end
end
